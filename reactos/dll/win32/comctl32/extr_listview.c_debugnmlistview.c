
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lParam; int ptAction; int uChanged; int uOldState; int uNewState; int iSubItem; int iItem; } ;
typedef TYPE_1__ NMLISTVIEW ;


 char const* wine_dbg_sprintf (char*,int ,int ,int ,int ,int ,int ,int ) ;
 int wine_dbgstr_point (int *) ;

__attribute__((used)) static const char* debugnmlistview(const NMLISTVIEW *plvnm)
{
    if (!plvnm) return "(null)";
    return wine_dbg_sprintf("iItem=%d, iSubItem=%d, uNewState=0x%x,"
          " uOldState=0x%x, uChanged=0x%x, ptAction=%s, lParam=%ld",
          plvnm->iItem, plvnm->iSubItem, plvnm->uNewState, plvnm->uOldState,
   plvnm->uChanged, wine_dbgstr_point(&plvnm->ptAction), plvnm->lParam);
}
