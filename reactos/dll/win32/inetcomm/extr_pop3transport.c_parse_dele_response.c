
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
typedef TYPE_1__ POP3Transport ;
typedef int HRESULT ;
typedef int DWORD ;


 void* STATE_DONE ;

 int S_FALSE ;
 int S_OK ;
 int WARN (char*) ;

__attribute__((used)) static HRESULT parse_dele_response(POP3Transport *This, DWORD *dwPopId)
{
    switch (This->state)
    {
    case 128:
        *dwPopId = 0;
        This->state = STATE_DONE;
        return S_OK;

    default:
        WARN("parse error\n");
        This->state = STATE_DONE;
        return S_FALSE;
    }
}
