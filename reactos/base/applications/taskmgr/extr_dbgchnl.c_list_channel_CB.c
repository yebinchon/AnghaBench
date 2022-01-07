
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lvi ;
typedef int WCHAR ;
struct TYPE_4__ {int* pszText; int mask; } ;
typedef TYPE_1__ LVITEM ;
typedef int HWND ;
typedef int HANDLE ;


 int LVIF_TEXT ;
 int ListView_InsertItem (int ,TYPE_1__*) ;
 int ListView_SetItemText (int ,int,int,int*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int list_channel_CB(HANDLE hProcess, void* addr, WCHAR* buffer, void* user)
{
    int j;
    WCHAR val[2];
    LVITEM lvi;
    int index;
    HWND hChannelLV = (HWND)user;

    memset(&lvi, 0, sizeof(lvi));

    lvi.mask = LVIF_TEXT;
    lvi.pszText = buffer + 1;

    index = ListView_InsertItem(hChannelLV, &lvi);
    if (index == -1) return 0;

    val[1] = L'\0';
    for (j = 0; j < 4; j++)
    {
        val[0] = (buffer[0] & (1 << j)) ? L'x' : L' ';
        ListView_SetItemText(hChannelLV, index, j + 1, val);
    }
    return 1;
}
