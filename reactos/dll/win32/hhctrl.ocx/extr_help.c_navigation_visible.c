
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fsWinProperties; int fNotExpanded; } ;
struct TYPE_5__ {TYPE_1__ WinType; } ;
typedef TYPE_2__ HHInfo ;
typedef int BOOL ;


 int HHWIN_PROP_TRI_PANE ;

__attribute__((used)) static inline BOOL navigation_visible(HHInfo *info)
{
    return ((info->WinType.fsWinProperties & HHWIN_PROP_TRI_PANE) && !info->WinType.fNotExpanded);
}
