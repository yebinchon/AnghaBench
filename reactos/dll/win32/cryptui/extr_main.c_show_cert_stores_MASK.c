#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct CertMgrStoreInfo {scalar_t__ name; } ;
struct CertMgrData {int nStores; struct CertMgrStoreInfo const* stores; } ;
struct TYPE_2__ {int mask; scalar_t__ lParam; scalar_t__ pszText; } ;
typedef  TYPE_1__ TCITEMW ;
typedef  scalar_t__ LPWSTR ;
typedef  scalar_t__ LPCWSTR ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HCERTSTORE ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (struct CertMgrStoreInfo*) ; 
 int /*<<< orphan*/  CERT_STORE_PROV_SYSTEM_W ; 
 int /*<<< orphan*/  CERT_SYSTEM_STORE_CURRENT_USER ; 
 int CRYPTUI_CERT_MGR_PUBLISHER_TAB ; 
 int CRYPTUI_CERT_MGR_SINGLE_TAB_FLAG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_MGR_STORES ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int TCIF_PARAM ; 
 int TCIF_TEXT ; 
 int /*<<< orphan*/  TCM_INSERTITEMW ; 
 struct CertMgrStoreInfo* defaultStoreList ; 
 struct CertMgrStoreInfo* publisherStoreList ; 

__attribute__((used)) static void FUNC5(HWND hwnd, DWORD dwFlags, struct CertMgrData *data)
{
    const struct CertMgrStoreInfo *storeList;
    int cStores, i;
    HWND tab = FUNC3(hwnd, IDC_MGR_STORES);

    if (dwFlags & CRYPTUI_CERT_MGR_PUBLISHER_TAB)
    {
        storeList = publisherStoreList;
        cStores = FUNC0(publisherStoreList);
    }
    else
    {
        storeList = defaultStoreList;
        cStores = FUNC0(defaultStoreList);
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

        if (!(name = FUNC2(storeList[i].name)))
            name = storeList[i].name;
        store = FUNC1(CERT_STORE_PROV_SYSTEM_W, 0, 0,
         CERT_SYSTEM_STORE_CURRENT_USER, storeList[i].name);
        item.mask = TCIF_TEXT | TCIF_PARAM;
        item.pszText = (LPWSTR)name;
        item.lParam = (LPARAM)store;
        FUNC4(tab, TCM_INSERTITEMW, i, (LPARAM)&item);
    }
}