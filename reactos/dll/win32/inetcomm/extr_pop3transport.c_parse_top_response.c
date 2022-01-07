
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cbSoFar; char* pszLines; int cbLines; void* fBody; void* fHeader; int cPreviewLines; int dwPopId; } ;
struct TYPE_5__ {int state; char* response; void* valid_info; int preview_lines; int msgid; } ;
typedef TYPE_1__ POP3Transport ;
typedef TYPE_2__ POP3TOP ;
typedef int HRESULT ;


 void* FALSE ;
 void* STATE_DONE ;


 int S_FALSE ;
 int S_OK ;
 void* TRUE ;
 int WARN (char*) ;
 int strlen (char*) ;

__attribute__((used)) static HRESULT parse_top_response(POP3Transport *This, POP3TOP *top)
{
    switch (This->state)
    {
    case 128:
        top->fHeader = FALSE;
        top->fBody = FALSE;
        top->dwPopId = This->msgid;
        top->cPreviewLines = This->preview_lines;
        top->cbSoFar = 0;
        top->pszLines = This->response;
        top->cbLines = 0;

        This->state = 129;
        This->valid_info = FALSE;
        return S_OK;

    case 129:
    {
        int len;

        if (This->response[0] == '.' && !This->response[1])
        {
            top->cbLines = top->cbSoFar;
            This->state = STATE_DONE;
            return S_OK;
        }
        top->fHeader = TRUE;
        if (!This->response[0]) top->fBody = TRUE;

        len = strlen(This->response);
        top->cbSoFar += len;
        top->pszLines = This->response;
        top->cbLines = len;

        This->valid_info = TRUE;
        return S_OK;
    }

    default:
        WARN("parse error\n");
        This->state = STATE_DONE;
        return S_FALSE;
    }
}
