
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* levels; scalar_t__ last_level; int htb; int hsec; } ;
typedef TYPE_1__ secdlg_data ;
typedef scalar_t__ WCHAR ;
typedef size_t DWORD ;


 int ARRAY_SIZE (scalar_t__*) ;
 int GetDlgItem (int ,int ) ;
 int IDC_SEC_LEVEL ;
 int IDC_SEC_LEVEL_INFO ;
 int IDS_SEC_LEVEL0 ;
 size_t IDS_SEC_LEVEL0_INFO ;
 int LoadStringW (int ,size_t,scalar_t__*,int ) ;
 int NUM_TRACKBAR_POS ;
 int SW_HIDE ;
 int SW_NORMAL ;
 int SendMessageW (int ,int ,int ,size_t) ;
 int SetWindowTextW (int ,scalar_t__*) ;
 int ShowWindow (int ,int ) ;
 int TBM_SETPOS ;
 int TRACE (char*,...) ;
 int TRUE ;
 int debugstr_w (scalar_t__*) ;
 int hcpl ;
 size_t index_from_urltemplate (scalar_t__) ;

__attribute__((used)) static void update_security_level(secdlg_data *sd, DWORD lv_index, DWORD tb_index)
{
    WCHAR name[512];
    DWORD current_index;

    TRACE("(%p, lv_index: %u, tb_index: %u)\n", sd, lv_index, tb_index);

    if ((sd->levels[lv_index] != sd->last_level) || (tb_index > 0)) {

        if (!sd->levels[lv_index] || !sd->last_level)
            ShowWindow(sd->htb, sd->levels[lv_index] ? SW_NORMAL : SW_HIDE);

        current_index = (tb_index > 0) ? tb_index : index_from_urltemplate(sd->levels[lv_index]);

        name[0] = 0;
        LoadStringW(hcpl, IDS_SEC_LEVEL0 + current_index, name, ARRAY_SIZE(name));
        TRACE("new level #%d: %s\n", current_index, debugstr_w(name));
        SetWindowTextW(GetDlgItem(sd->hsec, IDC_SEC_LEVEL), name);

        name[0] = 0;
        LoadStringW(hcpl, IDS_SEC_LEVEL0_INFO + (current_index * 0x10), name, ARRAY_SIZE(name));
        TRACE("new level info: %s\n", debugstr_w(name));
        SetWindowTextW(GetDlgItem(sd->hsec, IDC_SEC_LEVEL_INFO), name);

        if (current_index)
            SendMessageW(sd->htb, TBM_SETPOS, TRUE, NUM_TRACKBAR_POS - current_index);

        sd->last_level = sd->levels[lv_index];

    }
}
