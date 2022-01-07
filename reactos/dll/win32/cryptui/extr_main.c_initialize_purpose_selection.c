
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {scalar_t__ pwszName; } ;
typedef TYPE_1__* PCCRYPT_OID_INFO ;
typedef scalar_t__* LPSTR ;
typedef int LPARAM ;
typedef int HWND ;


 int ARRAY_SIZE (int *) ;
 int CB_INSERTSTRING ;
 int CB_SETCURSEL ;
 int CB_SETITEMDATA ;
 int CRYPT_OID_INFO_OID_KEY ;
 TYPE_1__* CryptFindOIDInfo (int ,scalar_t__*,int ) ;
 int GetDlgItem (int ,int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,scalar_t__*) ;
 int IDC_MGR_PURPOSE_SELECTION ;
 int IDS_PURPOSE_ADVANCED ;
 int IDS_PURPOSE_ALL ;
 int LoadStringW (int ,int ,int *,int ) ;
 int MAX_STRING_LEN ;
 scalar_t__ PurposeFilterShowAdvanced ;
 scalar_t__ PurposeFilterShowAll ;
 int SendMessageW (int ,int ,int,int ) ;
 scalar_t__* get_cert_mgr_usages () ;
 int hInstance ;
 scalar_t__* strchr (scalar_t__*,char) ;

__attribute__((used)) static void initialize_purpose_selection(HWND hwnd)
{
    HWND cb = GetDlgItem(hwnd, IDC_MGR_PURPOSE_SELECTION);
    WCHAR buf[MAX_STRING_LEN];
    LPSTR usages;
    int index;

    LoadStringW(hInstance, IDS_PURPOSE_ALL, buf, ARRAY_SIZE(buf));
    index = SendMessageW(cb, CB_INSERTSTRING, -1, (LPARAM)buf);
    SendMessageW(cb, CB_SETITEMDATA, index, (LPARAM)PurposeFilterShowAll);
    LoadStringW(hInstance, IDS_PURPOSE_ADVANCED, buf, ARRAY_SIZE(buf));
    index = SendMessageW(cb, CB_INSERTSTRING, -1, (LPARAM)buf);
    SendMessageW(cb, CB_SETITEMDATA, index, (LPARAM)PurposeFilterShowAdvanced);
    SendMessageW(cb, CB_SETCURSEL, 0, 0);
    if ((usages = get_cert_mgr_usages()))
    {
        LPSTR ptr, comma;

        for (ptr = usages, comma = strchr(ptr, ','); ptr && *ptr;
         ptr = comma ? comma + 1 : ((void*)0),
         comma = ptr ? strchr(ptr, ',') : ((void*)0))
        {
            PCCRYPT_OID_INFO info;

            if (comma)
                *comma = 0;
            if ((info = CryptFindOIDInfo(CRYPT_OID_INFO_OID_KEY, ptr, 0)))
            {
                index = SendMessageW(cb, CB_INSERTSTRING, 0,
                 (LPARAM)info->pwszName);
                SendMessageW(cb, CB_SETITEMDATA, index, (LPARAM)info);
            }
        }
        HeapFree(GetProcessHeap(), 0, usages);
    }
}
