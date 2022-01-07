
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nCurrentTool; int hwndSelf; } ;
typedef TYPE_1__ TOOLTIPS_INFO ;
typedef int LRESULT ;


 int UpdateWindow (int ) ;

__attribute__((used)) static LRESULT
TOOLTIPS_Update (TOOLTIPS_INFO *infoPtr)
{
    if (infoPtr->nCurrentTool != -1)
 UpdateWindow (infoPtr->hwndSelf);

    return 0;
}
