
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwStyle; int hwndSelf; } ;
typedef TYPE_1__ TOOLBAR_INFO ;


 int FIXME (char*,int ) ;
 int TBSTYLE_REGISTERDROP ;

__attribute__((used)) static void
TOOLBAR_CheckStyle (const TOOLBAR_INFO *infoPtr)
{
    if (infoPtr->dwStyle & TBSTYLE_REGISTERDROP)
 FIXME("[%p] TBSTYLE_REGISTERDROP not implemented\n", infoPtr->hwndSelf);
}
