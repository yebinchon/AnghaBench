
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ cbMessages; scalar_t__ cMessages; } ;
struct TYPE_5__ {int state; int valid_info; int ptr; } ;
typedef TYPE_1__ POP3Transport ;
typedef TYPE_2__ POP3STAT ;
typedef int HRESULT ;


 void* STATE_DONE ;

 int S_FALSE ;
 int S_OK ;
 int TRUE ;
 int WARN (char*) ;
 int sscanf (char*,char*,scalar_t__*,scalar_t__*) ;
 char* strchr (int ,char) ;

__attribute__((used)) static HRESULT parse_stat_response(POP3Transport *This, POP3STAT *stat)
{
    char *p;

    stat->cMessages = 0;
    stat->cbMessages = 0;
    switch (This->state)
    {
    case 128:
        if ((p = strchr(This->ptr, ' ')))
        {
            while (*p == ' ') p++;
            sscanf(p, "%u %u", &stat->cMessages, &stat->cbMessages);
            This->valid_info = TRUE;
            This->state = STATE_DONE;
            return S_OK;
        }

    default:
        WARN("parse error\n");
        This->state = STATE_DONE;
        return S_FALSE;
    }
}
