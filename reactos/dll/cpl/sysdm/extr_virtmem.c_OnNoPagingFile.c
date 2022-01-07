
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int hSelf; } ;
typedef TYPE_1__* PVIRTMEM ;


 int EnableWindow (int ,int ) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_INITIALSIZE ;
 int IDC_MAXSIZE ;

__attribute__((used)) static VOID
OnNoPagingFile(PVIRTMEM pVirtMem)
{

    EnableWindow(GetDlgItem(pVirtMem->hSelf, IDC_INITIALSIZE), FALSE);
    EnableWindow(GetDlgItem(pVirtMem->hSelf, IDC_MAXSIZE), FALSE);
}
