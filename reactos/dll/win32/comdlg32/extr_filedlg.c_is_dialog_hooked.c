
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ofnInfos; } ;
struct TYPE_4__ {int Flags; scalar_t__ lpfnHook; } ;
typedef TYPE_2__ FileOpenDlgInfos ;
typedef int BOOL ;


 int OFN_ENABLEHOOK ;

__attribute__((used)) static BOOL is_dialog_hooked(const FileOpenDlgInfos *info)
{
    return (info->ofnInfos->Flags & OFN_ENABLEHOOK) && info->ofnInfos->lpfnHook;
}
