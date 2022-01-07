
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t last_lv_index; int hsec; TYPE_2__* zone_attr; } ;
typedef TYPE_1__ secdlg_data ;
struct TYPE_6__ {int szDisplayName; int * szDescription; } ;
typedef TYPE_2__ ZONEATTRIBUTES ;
typedef int WCHAR ;
typedef size_t DWORD ;


 size_t ARRAY_SIZE (int *) ;
 int GetDlgItem (int ,int ) ;
 int IDC_SEC_GROUP ;
 int IDC_SEC_ZONE_INFO ;
 int IDS_SEC_SETTINGS ;
 size_t LoadStringW (int ,int ,int *,size_t) ;
 int MAX_PATH ;
 int SetWindowTextW (int ,int *) ;
 int TRACE (char*,int ) ;
 int debugstr_w (int *) ;
 int hcpl ;
 int lstrcpynW (int *,int ,size_t) ;
 int update_security_level (TYPE_1__*,size_t,int ) ;

__attribute__((used)) static void update_zone_info(secdlg_data *sd, DWORD lv_index)
{
    ZONEATTRIBUTES *za = &sd->zone_attr[lv_index];
    WCHAR name[MAX_PATH];
    DWORD len;

    SetWindowTextW(GetDlgItem(sd->hsec, IDC_SEC_ZONE_INFO), za->szDescription);

    len = LoadStringW(hcpl, IDS_SEC_SETTINGS, name, ARRAY_SIZE(name));
    lstrcpynW(&name[len], za->szDisplayName, ARRAY_SIZE(name) - len - 1);

    TRACE("new title: %s\n", debugstr_w(name));
    SetWindowTextW(GetDlgItem(sd->hsec, IDC_SEC_GROUP), name);

    update_security_level(sd, lv_index, 0);
    sd->last_lv_index = lv_index;
}
