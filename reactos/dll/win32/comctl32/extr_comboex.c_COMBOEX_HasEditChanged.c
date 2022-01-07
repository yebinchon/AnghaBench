
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ hwndEdit; } ;
typedef TYPE_1__ COMBOEX_INFO ;
typedef int BOOL ;


 int WCBE_EDITHASCHANGED ;

__attribute__((used)) static inline BOOL COMBOEX_HasEditChanged (COMBOEX_INFO const *infoPtr)
{
    return infoPtr->hwndEdit && (infoPtr->flags & WCBE_EDITHASCHANGED) == WCBE_EDITHASCHANGED;
}
