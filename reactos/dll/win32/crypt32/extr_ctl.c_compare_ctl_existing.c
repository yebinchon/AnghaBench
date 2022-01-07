
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cbCtlContext; int pbCtlContext; } ;
typedef TYPE_1__* PCCTL_CONTEXT ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static BOOL compare_ctl_existing(PCCTL_CONTEXT pCtlContext, DWORD dwType,
 DWORD dwFlags, const void *pvPara)
{
    BOOL ret;

    if (pvPara)
    {
        PCCTL_CONTEXT ctl = pvPara;

        if (pCtlContext->cbCtlContext == ctl->cbCtlContext)
        {
            if (ctl->cbCtlContext)
                ret = !memcmp(pCtlContext->pbCtlContext, ctl->pbCtlContext,
                 ctl->cbCtlContext);
            else
                ret = TRUE;
        }
        else
            ret = FALSE;
    }
    else
        ret = FALSE;
    return ret;
}
