#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {char* pszResponse; int /*<<< orphan*/  hrServerError; int /*<<< orphan*/ * pszProblem; int /*<<< orphan*/  dwSocketError; int /*<<< orphan*/  hrResult; scalar_t__ uiServerError; } ;
struct TYPE_16__ {int /*<<< orphan*/  rTopInfo; int /*<<< orphan*/  rRetrInfo; int /*<<< orphan*/  dwPopId; int /*<<< orphan*/  rListInfo; int /*<<< orphan*/  rStatInfo; int /*<<< orphan*/  rUidlInfo; } ;
struct TYPE_21__ {int command; int fDone; TYPE_2__ rIxpResult; int /*<<< orphan*/ * pTransport; int /*<<< orphan*/  fValidInfo; TYPE_1__ u; } ;
struct TYPE_18__ {int /*<<< orphan*/  vtbl; int /*<<< orphan*/  vtblPOP3; } ;
struct TYPE_19__ {TYPE_3__ u; scalar_t__ pCallback; scalar_t__ fCommandLogging; } ;
struct TYPE_20__ {char* response; scalar_t__ state; int command; TYPE_4__ InetTransport; int /*<<< orphan*/  valid_info; } ;
typedef  TYPE_5__ POP3Transport ;
typedef  TYPE_6__ POP3RESPONSE ;
typedef  int /*<<< orphan*/  IPOP3Transport ;
typedef  int /*<<< orphan*/  IInternetTransport ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RESP ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  POP3_DELE 133 
#define  POP3_LIST 132 
#define  POP3_RETR 131 
#define  POP3_STAT 130 
#define  POP3_TOP 129 
#define  POP3_UIDL 128 
 scalar_t__ STATE_DONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC12(POP3Transport *This, char *pszResponse, POP3RESPONSE *pResponse)
{
    HRESULT hr;

    FUNC2("response: %s\n", FUNC4(pszResponse));

    This->response = pszResponse;
    This->valid_info = FALSE;
    FUNC2("state %u\n", This->state);

    if (FUNC1((hr = FUNC7(This))))
    {
        switch (This->command)
        {
        case POP3_UIDL: hr = FUNC11(This, &pResponse->u.rUidlInfo); break;
        case POP3_STAT: hr = FUNC9(This, &pResponse->u.rStatInfo); break;
        case POP3_LIST: hr = FUNC6(This, &pResponse->u.rListInfo); break;
        case POP3_DELE: hr = FUNC5(This, &pResponse->u.dwPopId); break;
        case POP3_RETR: hr = FUNC8(This, &pResponse->u.rRetrInfo); break;
        case POP3_TOP: hr = FUNC10(This, &pResponse->u.rTopInfo); break;
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
    pResponse->rIxpResult.dwSocketError = FUNC3();
    pResponse->rIxpResult.pszProblem = NULL;
    pResponse->pTransport = (IPOP3Transport *)&This->InetTransport.u.vtblPOP3;

    if (This->InetTransport.pCallback && This->InetTransport.fCommandLogging)
    {
        FUNC0(This->InetTransport.pCallback, CMD_RESP,
            pResponse->rIxpResult.pszResponse, pResponse->rIxpResult.hrServerError,
            (IInternetTransport *)&This->InetTransport.u.vtbl);
    }
    return S_OK;
}