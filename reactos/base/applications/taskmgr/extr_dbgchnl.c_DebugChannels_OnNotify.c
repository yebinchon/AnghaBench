
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int val ;
struct cce_user {int* name; unsigned int value; unsigned int mask; int notdone; int done; } ;
typedef int name ;
typedef int WCHAR ;
struct TYPE_6__ {int iSubItem; int iItem; int pt; } ;
struct TYPE_5__ {int code; int idFrom; } ;
struct TYPE_4__ {int iSubItem; int ptAction; } ;
typedef TYPE_1__ NMITEMACTIVATE ;
typedef TYPE_2__ NMHDR ;
typedef TYPE_3__ LVHITTESTINFO ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;
typedef int HANDLE ;


 int CloseHandle (int ) ;
 int FALSE ;
 int GetDlgItem (int ,int ) ;
 int GetSelectedProcessId () ;
 int IDC_DEBUG_CHANNELS_LIST ;
 int LVM_SUBITEMHITTEST ;
 int ListView_GetItemText (int ,int ,int ,int*,int) ;
 int ListView_SetItemText (int ,int ,int ,int*) ;

 int OpenProcess (int,int ,int ) ;
 int PROCESS_VM_OPERATION ;
 int PROCESS_VM_READ ;
 int PROCESS_VM_WRITE ;
 int SendMessageW (int ,int ,int ,scalar_t__) ;
 int change_channel_CB ;
 int enum_channel (int ,int ,struct cce_user*,int ) ;
 int printf (char*) ;

__attribute__((used)) static void DebugChannels_OnNotify(HWND hDlg, LPARAM lParam)
{
    NMHDR* nmh = (NMHDR*)lParam;

    switch (nmh->code)
    {
    case 128:
        if (nmh->idFrom == IDC_DEBUG_CHANNELS_LIST)
        {
            LVHITTESTINFO lhti;
            HWND hChannelLV;
            HANDLE hProcess;
            NMITEMACTIVATE* nmia = (NMITEMACTIVATE*)lParam;

            hProcess = OpenProcess(PROCESS_VM_OPERATION | PROCESS_VM_READ | PROCESS_VM_WRITE, FALSE, GetSelectedProcessId());
            if (!hProcess) return;
            lhti.pt = nmia->ptAction;
            hChannelLV = GetDlgItem(hDlg, IDC_DEBUG_CHANNELS_LIST);
            SendMessageW(hChannelLV, LVM_SUBITEMHITTEST, 0, (LPARAM)&lhti);
            if (nmia->iSubItem >= 1 && nmia->iSubItem <= 4)
            {
                WCHAR val[2];
                WCHAR name[32];
                unsigned bitmask = 1 << (lhti.iSubItem - 1);
                struct cce_user user;

                ListView_GetItemText(hChannelLV, lhti.iItem, 0, name, sizeof(name) / sizeof(name[0]));
                ListView_GetItemText(hChannelLV, lhti.iItem, lhti.iSubItem, val, sizeof(val) / sizeof(val[0]));
                user.name = name;
                user.value = (val[0] == L'x') ? 0 : bitmask;
                user.mask = bitmask;
                user.done = user.notdone = 0;
                enum_channel(hProcess, change_channel_CB, &user, FALSE);
                if (user.done)
                {
                    val[0] ^= (L'x' ^ L' ');
                    ListView_SetItemText(hChannelLV, lhti.iItem, lhti.iSubItem, val);
                }
                if (user.notdone)
                    printf("Some channel instance weren't correctly set\n");
            }
            CloseHandle(hProcess);
        }
        break;
    }
}
