
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* tools; } ;
struct TYPE_9__ {scalar_t__ cbSize; int rect; } ;
struct TYPE_8__ {int rect; } ;
typedef TYPE_2__ TTTOOLINFOW ;
typedef TYPE_3__ TOOLTIPS_INFO ;
typedef int LRESULT ;
typedef int INT ;


 int FALSE ;
 int TOOLTIPS_GetToolFromInfoT (TYPE_3__*,TYPE_2__ const*) ;
 int TRACE (char*,int,int ) ;
 scalar_t__ TTTOOLINFOW_V1_SIZE ;
 int wine_dbgstr_rect (int *) ;

__attribute__((used)) static LRESULT
TOOLTIPS_NewToolRectT (TOOLTIPS_INFO *infoPtr, const TTTOOLINFOW *ti)
{
    INT nTool;

    if (!ti) return 0;
    if (ti->cbSize < TTTOOLINFOW_V1_SIZE)
 return FALSE;

    nTool = TOOLTIPS_GetToolFromInfoT (infoPtr, ti);

    TRACE("nTool = %d, rect = %s\n", nTool, wine_dbgstr_rect(&ti->rect));

    if (nTool == -1) return 0;

    infoPtr->tools[nTool].rect = ti->rect;

    return 0;
}
