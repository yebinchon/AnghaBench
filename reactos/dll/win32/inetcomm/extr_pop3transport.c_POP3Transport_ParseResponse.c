
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {char* pszResponse; int hrServerError; int * pszProblem; int dwSocketError; int hrResult; scalar_t__ uiServerError; } ;
struct TYPE_16__ {int rTopInfo; int rRetrInfo; int dwPopId; int rListInfo; int rStatInfo; int rUidlInfo; } ;
struct TYPE_21__ {int command; int fDone; TYPE_2__ rIxpResult; int * pTransport; int fValidInfo; TYPE_1__ u; } ;
struct TYPE_18__ {int vtbl; int vtblPOP3; } ;
struct TYPE_19__ {TYPE_3__ u; scalar_t__ pCallback; scalar_t__ fCommandLogging; } ;
struct TYPE_20__ {char* response; scalar_t__ state; int command; TYPE_4__ InetTransport; int valid_info; } ;
typedef TYPE_5__ POP3Transport ;
typedef TYPE_6__ POP3RESPONSE ;
typedef int IPOP3Transport ;
typedef int IInternetTransport ;
typedef int HRESULT ;


 int CMD_RESP ;
 int FALSE ;
 int ITransportCallback_OnCommand (scalar_t__,int ,char*,int ,int *) ;






 scalar_t__ STATE_DONE ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*,scalar_t__) ;
 int WSAGetLastError () ;
 scalar_t__ debugstr_a (char*) ;
 int parse_dele_response (TYPE_5__*,int *) ;
 int parse_list_response (TYPE_5__*,int *) ;
 int parse_response (TYPE_5__*) ;
 int parse_retr_response (TYPE_5__*,int *) ;
 int parse_stat_response (TYPE_5__*,int *) ;
 int parse_top_response (TYPE_5__*,int *) ;
 int parse_uidl_response (TYPE_5__*,int *) ;

__attribute__((used)) static HRESULT POP3Transport_ParseResponse(POP3Transport *This, char *pszResponse, POP3RESPONSE *pResponse)
{
    HRESULT hr;

    TRACE("response: %s\n", debugstr_a(pszResponse));

    This->response = pszResponse;
    This->valid_info = FALSE;
    TRACE("state %u\n", This->state);

    if (SUCCEEDED((hr = parse_response(This))))
    {
        switch (This->command)
        {
        case 128: hr = parse_uidl_response(This, &pResponse->u.rUidlInfo); break;
        case 130: hr = parse_stat_response(This, &pResponse->u.rStatInfo); break;
        case 132: hr = parse_list_response(This, &pResponse->u.rListInfo); break;
        case 133: hr = parse_dele_response(This, &pResponse->u.dwPopId); break;
        case 131: hr = parse_retr_response(This, &pResponse->u.rRetrInfo); break;
        case 129: hr = parse_top_response(This, &pResponse->u.rTopInfo); break;
        default:
            This->state = STATE_DONE;
            break;
        }
    }
    pResponse->command = This->command;
    pResponse->fDone = (This->state == STATE_DONE);
    pResponse->fValidInfo = This->valid_info;
    pResponse->rIxpResult.hrResult = hr;
    pResponse->rIxpResult.pszResponse = pszResponse;
    pResponse->rIxpResult.uiServerError = 0;
    pResponse->rIxpResult.hrServerError = pResponse->rIxpResult.hrResult;
    pResponse->rIxpResult.dwSocketError = WSAGetLastError();
    pResponse->rIxpResult.pszProblem = ((void*)0);
    pResponse->pTransport = (IPOP3Transport *)&This->InetTransport.u.vtblPOP3;

    if (This->InetTransport.pCallback && This->InetTransport.fCommandLogging)
    {
        ITransportCallback_OnCommand(This->InetTransport.pCallback, CMD_RESP,
            pResponse->rIxpResult.pszResponse, pResponse->rIxpResult.hrServerError,
            (IInternetTransport *)&This->InetTransport.u.vtbl);
    }
    return S_OK;
}
