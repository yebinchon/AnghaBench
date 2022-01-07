
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int response; int ptr; } ;
typedef TYPE_1__ POP3Transport ;
typedef int HRESULT ;


 void* STATE_DONE ;

 int STATE_OK ;
 int S_FALSE ;
 int S_OK ;
 int WARN (char*) ;
 int memcmp (int ,char*,int) ;
 int strlen (int ) ;

__attribute__((used)) static HRESULT parse_response(POP3Transport *This)
{
    switch (This->state)
    {
    case 128:
        if (strlen(This->response) < 3)
        {
            WARN("parse error\n");
            This->state = STATE_DONE;
            return S_FALSE;
        }
        if (!memcmp(This->response, "+OK", 3))
        {
            This->ptr = This->response + 3;
            This->state = STATE_OK;
            return S_OK;
        }
        This->state = STATE_DONE;
        return S_FALSE;

    default: return S_OK;
    }
}
