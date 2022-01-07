
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cy; } ;
struct TYPE_5__ {int iVersion; int dwStyle; TYPE_1__ szBarPadding; } ;
typedef TYPE_2__ TOOLBAR_INFO ;


 int TBSTYLE_FLAT ;
 int TOP_BORDER ;

__attribute__((used)) static inline int default_top_margin(const TOOLBAR_INFO *infoPtr)
{




    return (infoPtr->dwStyle & TBSTYLE_FLAT ? 0 : TOP_BORDER);
}
