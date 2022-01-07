
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Flags; scalar_t__ lpfnHook; } ;
typedef TYPE_1__ CHOOSECOLORW ;
typedef int BOOL ;


 int CC_ENABLEHOOK ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL CC_HookCallChk( const CHOOSECOLORW *lpcc )
{
 if (lpcc)
  if(lpcc->Flags & CC_ENABLEHOOK)
   if (lpcc->lpfnHook)
    return TRUE;
 return FALSE;
}
