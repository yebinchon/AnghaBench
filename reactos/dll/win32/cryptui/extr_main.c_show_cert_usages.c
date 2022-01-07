
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct edit_cert_data {scalar_t__ imageList; int cert; } ;
struct TYPE_10__ {scalar_t__ cx; int mask; } ;
struct TYPE_9__ {size_t cUsageIdentifier; int * rgpszUsageIdentifier; } ;
struct TYPE_8__ {scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_1__ RECT ;
typedef scalar_t__ PurposeSelection ;
typedef TYPE_2__* PCERT_ENHKEY_USAGE ;
typedef scalar_t__ PCCRYPT_OID_INFO ;
typedef int PCCERT_CONTEXT ;
typedef TYPE_3__ LVCOLUMNW ;
typedef int LPARAM ;
typedef int HWND ;
typedef size_t DWORD ;


 int BM_CLICK ;
 int CERT_FIND_EXT_ONLY_ENHKEY_USAGE_FLAG ;
 int CERT_FIND_PROP_ONLY_ENHKEY_USAGE_FLAG ;
 int CRYPT_ENHKEY_USAGE_OID_GROUP_ID ;
 int CRYPT_OID_INFO_OID_KEY ;
 scalar_t__ CertGetEnhancedKeyUsage (int ,int ,TYPE_2__*,size_t*) ;
 int CheckBitmapIndexDisabledChecked ;
 scalar_t__ CryptFindOIDInfo (int ,int ,int ) ;
 int GetDlgItem (int ,scalar_t__) ;
 int GetProcessHeap () ;
 int GetWindowRect (int ,TYPE_1__*) ;
 TYPE_2__* HeapAlloc (int ,int ,size_t) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 scalar_t__ IDC_CERTIFICATE_USAGES ;
 scalar_t__ IDC_ENABLE_ALL_PURPOSES ;
 int LVCF_WIDTH ;
 int LVM_INSERTCOLUMNW ;
 int LVM_SETIMAGELIST ;
 int LVSIL_STATE ;
 scalar_t__ PurposeDisableAll ;
 scalar_t__ PurposeEnableAll ;
 scalar_t__ PurposeEnableSelected ;
 int SendMessageW (int ,int ,int ,int ) ;
 int add_known_usage (int ,scalar_t__,int ) ;
 int add_known_usages_to_list (int ,int ) ;
 int add_purpose (int ,int ) ;
 int select_purposes (int ,scalar_t__) ;

__attribute__((used)) static void show_cert_usages(HWND hwnd, struct edit_cert_data *data)
{
    PCCERT_CONTEXT cert = data->cert;
    HWND lv = GetDlgItem(hwnd, IDC_CERTIFICATE_USAGES);
    PCERT_ENHKEY_USAGE usage;
    DWORD size;
    RECT rc;
    LVCOLUMNW column;
    PurposeSelection purposeSelection = PurposeEnableAll;

    GetWindowRect(lv, &rc);
    column.mask = LVCF_WIDTH;
    column.cx = rc.right - rc.left;
    SendMessageW(lv, LVM_INSERTCOLUMNW, 0, (LPARAM)&column);
    SendMessageW(lv, LVM_SETIMAGELIST, LVSIL_STATE, (LPARAM)data->imageList);






    if (CertGetEnhancedKeyUsage(cert, CERT_FIND_PROP_ONLY_ENHKEY_USAGE_FLAG,
     ((void*)0), &size))
    {
        usage = HeapAlloc(GetProcessHeap(), 0, size);
        if (!CertGetEnhancedKeyUsage(cert,
         CERT_FIND_PROP_ONLY_ENHKEY_USAGE_FLAG, usage, &size))
        {
            HeapFree(GetProcessHeap(), 0, usage);
            usage = ((void*)0);
        }
        else if (usage->cUsageIdentifier)
            purposeSelection = PurposeEnableSelected;
        else
            purposeSelection = PurposeDisableAll;
    }
    else if (CertGetEnhancedKeyUsage(cert, CERT_FIND_EXT_ONLY_ENHKEY_USAGE_FLAG,
     ((void*)0), &size))
    {
        usage = HeapAlloc(GetProcessHeap(), 0, size);
        if (!CertGetEnhancedKeyUsage(cert,
         CERT_FIND_EXT_ONLY_ENHKEY_USAGE_FLAG, usage, &size))
        {
            HeapFree(GetProcessHeap(), 0, usage);
            usage = ((void*)0);
        }
        else if (usage->cUsageIdentifier)
            purposeSelection = PurposeEnableAll;
        else
            purposeSelection = PurposeDisableAll;
    }
    else
    {
        purposeSelection = PurposeEnableAll;
        usage = ((void*)0);
    }
    if (usage)
    {
        DWORD i;

        for (i = 0; i < usage->cUsageIdentifier; i++)
        {
            PCCRYPT_OID_INFO info = CryptFindOIDInfo(CRYPT_OID_INFO_OID_KEY,
             usage->rgpszUsageIdentifier[i], CRYPT_ENHKEY_USAGE_OID_GROUP_ID);

            if (info)
                add_known_usage(lv, info, CheckBitmapIndexDisabledChecked);
            else
                add_purpose(hwnd, usage->rgpszUsageIdentifier[i]);
        }
        HeapFree(GetProcessHeap(), 0, usage);
    }
    else
        add_known_usages_to_list(lv, CheckBitmapIndexDisabledChecked);
    select_purposes(hwnd, purposeSelection);
    SendMessageW(GetDlgItem(hwnd, IDC_ENABLE_ALL_PURPOSES + purposeSelection),
     BM_CLICK, 0, 0);
}
