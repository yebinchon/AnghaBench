
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int himages; int num_zones; int zone_enumerator; int zone_mgr; int * zones; int * levels; void* zone_attr; void* hlv; void* htb; int hsec; } ;
typedef TYPE_1__ secdlg_data ;
typedef int ZONEATTRIBUTES ;
typedef int LPARAM ;
typedef int LONG_PTR ;
typedef int INT_PTR ;
typedef int HWND ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 int DWLP_USER ;
 int ERR (char*,...) ;
 int EnableWindow (void*,int) ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 void* GetDlgItem (int ,int ) ;
 int GetSystemMetrics (int ) ;
 int IDC_SEC_LISTVIEW ;
 int IDC_SEC_TRACKBAR ;
 int IInternetZoneManager_GetZoneAt (int ,int ,scalar_t__,scalar_t__*) ;
 int ILC_COLOR32 ;
 int ILC_MASK ;
 int ImageList_Create (int ,int ,int,int,int) ;
 int LVM_SETIMAGELIST ;
 int LVSIL_NORMAL ;
 int MAKELONG (int ,scalar_t__) ;
 scalar_t__ NUM_TRACKBAR_POS ;
 int SM_CXICON ;
 int SM_CYICON ;
 scalar_t__ SUCCEEDED (int ) ;
 int SendMessageW (void*,int ,int,int ) ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int TBM_SETRANGE ;
 int TBM_SETTICFREQ ;
 int TRACE (char*,int,...) ;
 int TRUE ;
 scalar_t__ URLZONE_INTERNET ;
 scalar_t__ URLZONE_INTRANET ;
 scalar_t__ URLZONE_INVALID ;
 scalar_t__ URLZONE_TRUSTED ;
 scalar_t__ URLZONE_UNTRUSTED ;
 int add_zone_to_listview (TYPE_1__*,scalar_t__*,scalar_t__) ;
 void* heap_alloc (int) ;
 TYPE_1__* heap_alloc_zero (int) ;
 int security_enum_zones (TYPE_1__*) ;
 int security_on_destroy (TYPE_1__*) ;

__attribute__((used)) static INT_PTR security_on_initdialog(HWND hsec)
{
    secdlg_data *sd;
    HRESULT hr;
    DWORD current_zone;
    DWORD lv_index = 0;
    DWORD i;

    sd = heap_alloc_zero(sizeof(secdlg_data));
    SetWindowLongPtrW(hsec, DWLP_USER, (LONG_PTR) sd);
    if (!sd) {
        return FALSE;
    }

    sd->hsec = hsec;
    sd->hlv = GetDlgItem(hsec, IDC_SEC_LISTVIEW);
    sd->htb = GetDlgItem(hsec, IDC_SEC_TRACKBAR);

    EnableWindow(sd->htb, FALSE);

    TRACE("(%p)   (data: %p, listview: %p, trackbar: %p)\n", hsec, sd, sd->hlv, sd->htb);

    SendMessageW(sd->htb, TBM_SETRANGE, FALSE, MAKELONG(0, NUM_TRACKBAR_POS - 1));
    SendMessageW(sd->htb, TBM_SETTICFREQ, 1, 0 );


    sd->himages = ImageList_Create(GetSystemMetrics(SM_CXICON), GetSystemMetrics(SM_CYICON), ILC_COLOR32 | ILC_MASK, 1, 1);

    TRACE("using imagelist: %p\n", sd->himages);
    if (!sd->himages) {
        ERR("ImageList_Create failed!\n");
        return FALSE;
    }
    SendMessageW(sd->hlv, LVM_SETIMAGELIST, LVSIL_NORMAL, (LPARAM)sd->himages);

    hr = security_enum_zones(sd);
    if (FAILED(hr)) {
        ERR("got 0x%x\n", hr);
        security_on_destroy(sd);
        return FALSE;
    }

    TRACE("found %d zones\n", sd->num_zones);


    sd->zone_attr = heap_alloc(sizeof(ZONEATTRIBUTES) * sd->num_zones);
    if (!sd->zone_attr) {
        security_on_destroy(sd);
        return FALSE;
    }


    sd->zones = heap_alloc((sizeof(DWORD) + sizeof(DWORD)) * sd->num_zones);
    if (!sd->zones) {
        security_on_destroy(sd);
        return FALSE;
    }
    sd->levels = &sd->zones[sd->num_zones];


    add_zone_to_listview(sd, &lv_index, URLZONE_INTERNET);
    add_zone_to_listview(sd, &lv_index, URLZONE_INTRANET);
    add_zone_to_listview(sd, &lv_index, URLZONE_TRUSTED);
    add_zone_to_listview(sd, &lv_index, URLZONE_UNTRUSTED);

    for (i = 0; i < sd->num_zones; i++)
    {
        hr = IInternetZoneManager_GetZoneAt(sd->zone_mgr, sd->zone_enumerator, i, &current_zone);
        if (SUCCEEDED(hr) && (current_zone != (DWORD)URLZONE_INVALID)) {
            if (!current_zone || (current_zone > URLZONE_UNTRUSTED)) {
                add_zone_to_listview(sd, &lv_index, current_zone);
            }
        }
    }
    return TRUE;
}
