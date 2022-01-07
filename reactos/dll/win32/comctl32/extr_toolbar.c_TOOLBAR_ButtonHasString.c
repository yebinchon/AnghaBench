
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iString; } ;
typedef TYPE_1__ TBUTTON_INFO ;
typedef int BOOL ;


 scalar_t__ HIWORD (int) ;

__attribute__((used)) static inline BOOL
TOOLBAR_ButtonHasString(const TBUTTON_INFO *btnPtr)
{
    return HIWORD(btnPtr->iString) && btnPtr->iString != -1;
}
