
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Flags; scalar_t__ lpfnHook; } ;
typedef TYPE_1__ CHOOSEFONTW ;
typedef int BOOL ;


 int CF_ENABLEHOOK ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL CFn_HookCallChk32(const CHOOSEFONTW *lpcf)
{
    if (lpcf)
        if(lpcf->Flags & CF_ENABLEHOOK)
            if (lpcf->lpfnHook)
                return TRUE;
    return FALSE;
}
