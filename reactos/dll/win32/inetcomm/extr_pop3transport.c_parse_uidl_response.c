
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int state; char* ptr; char* response; void* valid_info; int type; } ;
struct TYPE_5__ {char* pszUidl; scalar_t__ dwPopId; } ;
typedef TYPE_1__ POP3UIDL ;
typedef TYPE_2__ POP3Transport ;
typedef int HRESULT ;


 void* FALSE ;
 int POP3CMD_GET_POPID ;
 void* STATE_DONE ;


 int S_FALSE ;
 int S_OK ;
 void* TRUE ;
 int WARN (char*) ;
 int sscanf (char*,char*,scalar_t__*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static HRESULT parse_uidl_response(POP3Transport *This, POP3UIDL *uidl)
{
    char *p;

    uidl->dwPopId = 0;
    uidl->pszUidl = ((void*)0);
    switch (This->state)
    {
    case 128:
        if (This->type == POP3CMD_GET_POPID)
        {
            if ((p = strchr(This->ptr, ' ')))
            {
                while (*p == ' ') p++;
                sscanf(p, "%u", &uidl->dwPopId);
                if ((p = strchr(p, ' ')))
                {
                    while (*p == ' ') p++;
                    uidl->pszUidl = p;
                    This->valid_info = TRUE;
                }
             }
             This->state = STATE_DONE;
             return S_OK;
        }
        This->state = 129;
        return S_OK;

    case 129:
        if (This->response[0] == '.' && !This->response[1])
        {
            This->valid_info = FALSE;
            This->state = STATE_DONE;
            return S_OK;
        }
        sscanf(This->response, "%u", &uidl->dwPopId);
        if ((p = strchr(This->response, ' ')))
        {
            while (*p == ' ') p++;
            uidl->pszUidl = p;
            This->valid_info = TRUE;
            return S_OK;
        }

    default:
        WARN("parse error\n");
        This->state = STATE_DONE;
        return S_FALSE;
    }
}
