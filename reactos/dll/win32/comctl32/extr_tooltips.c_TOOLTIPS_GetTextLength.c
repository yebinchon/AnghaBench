
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int szTipText; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef int LRESULT ;


 int strlenW (int ) ;

__attribute__((used)) static inline LRESULT
TOOLTIPS_GetTextLength(const TOOLTIPS_INFO *infoPtr)
{
    return strlenW(infoPtr->szTipText);
}
