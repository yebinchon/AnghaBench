
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dwDlgProp; } ;
struct TYPE_7__ {TYPE_2__ DlgInfos; TYPE_1__* ofnInfos; } ;
struct TYPE_5__ {int Flags; } ;
typedef TYPE_3__ FileOpenDlgInfos ;
typedef int BOOL ;


 int FODPROP_SAVEDLG ;
 int OFN_HIDEREADONLY ;

__attribute__((used)) static BOOL filedialog_is_readonly_hidden(const FileOpenDlgInfos *info)
{
    return (info->ofnInfos->Flags & OFN_HIDEREADONLY) || (info->DlgInfos.dwDlgProp & FODPROP_SAVEDLG);
}
