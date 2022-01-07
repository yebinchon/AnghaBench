
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct CertMgrStoreInfo {scalar_t__ name; } ;
struct CertMgrData {int nStores; struct CertMgrStoreInfo const* stores; } ;
struct TYPE_2__ {int mask; scalar_t__ lParam; scalar_t__ pszText; } ;
typedef TYPE_1__ TCITEMW ;
typedef scalar_t__ LPWSTR ;
typedef scalar_t__ LPCWSTR ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;
typedef scalar_t__ HCERTSTORE ;
typedef int DWORD ;


 int ARRAY_SIZE (struct CertMgrStoreInfo*) ;
 int CERT_STORE_PROV_SYSTEM_W ;
 int CERT_SYSTEM_STORE_CURRENT_USER ;
 int CRYPTUI_CERT_MGR_PUBLISHER_TAB ;
 int CRYPTUI_CERT_MGR_SINGLE_TAB_FLAG ;
 scalar_t__ CertOpenStore (int ,int ,int ,int ,scalar_t__) ;
 scalar_t__ CryptFindLocalizedName (scalar_t__) ;
 int GetDlgItem (int ,int ) ;
 int IDC_MGR_STORES ;
 int SendMessageW (int ,int ,int,scalar_t__) ;
 int TCIF_PARAM ;
 int TCIF_TEXT ;
 int TCM_INSERTITEMW ;
 struct CertMgrStoreInfo* defaultStoreList ;
 struct CertMgrStoreInfo* publisherStoreList ;

__attribute__((used)) static void show_cert_stores(HWND hwnd, DWORD dwFlags, struct CertMgrData *data)
{
    const struct CertMgrStoreInfo *storeList;
    int cStores, i;
    HWND tab = GetDlgItem(hwnd, IDC_MGR_STORES);

    if (dwFlags & CRYPTUI_CERT_MGR_PUBLISHER_TAB)
    {
        storeList = publisherStoreList;
        cStores = ARRAY_SIZE(publisherStoreList);
    }
    else
    {
        storeList = defaultStoreList;
        cStores = ARRAY_SIZE(defaultStoreList);
    }
    if (dwFlags & CRYPTUI_CERT_MGR_SINGLE_TAB_FLAG)
        cStores = 1;
    data->nStores = cStores;
    data->stores = storeList;
    for (i = 0; i < cStores; i++)
    {
        LPCWSTR name;
        TCITEMW item;
        HCERTSTORE store;

        if (!(name = CryptFindLocalizedName(storeList[i].name)))
            name = storeList[i].name;
        store = CertOpenStore(CERT_STORE_PROV_SYSTEM_W, 0, 0,
         CERT_SYSTEM_STORE_CURRENT_USER, storeList[i].name);
        item.mask = TCIF_TEXT | TCIF_PARAM;
        item.pszText = (LPWSTR)name;
        item.lParam = (LPARAM)store;
        SendMessageW(tab, TCM_INSERTITEMW, i, (LPARAM)&item);
    }
}
