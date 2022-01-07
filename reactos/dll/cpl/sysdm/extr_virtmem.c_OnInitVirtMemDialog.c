
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_8__ {TYPE_1__* Pagefile; int hListBox; void* bModified; int hSelf; } ;
struct TYPE_7__ {int OldMinSize; int OldMaxSize; int NewMinSize; int NewMaxSize; void* bUsed; } ;
typedef TYPE_2__* PVIRTMEM ;
typedef int INT ;
typedef int HWND ;


 void* FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_PAGEFILELIST ;
 int InitPagefileList (TYPE_2__*) ;
 int ParseMemSettings (TYPE_2__*) ;
 int ReadPageFileSettings (TYPE_2__*) ;
 int SetListBoxColumns (int ) ;

__attribute__((used)) static VOID
OnInitVirtMemDialog(HWND hwnd, PVIRTMEM pVirtMem)
{
    INT i;

    pVirtMem->hSelf = hwnd;
    pVirtMem->hListBox = GetDlgItem(hwnd, IDC_PAGEFILELIST);
    pVirtMem->bModified = FALSE;

    SetListBoxColumns(pVirtMem->hListBox);

    for (i = 0; i < 26; i++)
    {
        pVirtMem->Pagefile[i].bUsed = FALSE;
        pVirtMem->Pagefile[i].OldMinSize = -1;
        pVirtMem->Pagefile[i].OldMaxSize = -1;
        pVirtMem->Pagefile[i].NewMinSize = -1;
        pVirtMem->Pagefile[i].NewMaxSize = -1;
    }


    ReadPageFileSettings(pVirtMem);


    ParseMemSettings(pVirtMem);

    InitPagefileList(pVirtMem);
}
