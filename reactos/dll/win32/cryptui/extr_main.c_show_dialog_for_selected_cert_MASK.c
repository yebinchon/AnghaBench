#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  viewInfo ;
struct hierarchy_data {TYPE_3__* pCertViewInfo; } ;
typedef  int /*<<< orphan*/  item ;
struct TYPE_14__ {TYPE_2__* pasCertChain; } ;
struct TYPE_13__ {int mask; int dwSize; int /*<<< orphan*/  nStartPage; int /*<<< orphan*/  rgPropSheetPages; int /*<<< orphan*/  cPropSheetPages; int /*<<< orphan*/  rghStores; int /*<<< orphan*/  cStores; int /*<<< orphan*/  pCertContext; int /*<<< orphan*/  szTitle; int /*<<< orphan*/  dwFlags; int /*<<< orphan*/  lParam; scalar_t__ hItem; } ;
struct TYPE_10__ {scalar_t__ pCryptProviderData; } ;
struct TYPE_12__ {int /*<<< orphan*/  nStartPage; int /*<<< orphan*/  rgPropSheetPages; int /*<<< orphan*/  cPropSheetPages; int /*<<< orphan*/  rghStores; int /*<<< orphan*/  cStores; int /*<<< orphan*/  szTitle; int /*<<< orphan*/  dwFlags; int /*<<< orphan*/  idxCounterSigner; int /*<<< orphan*/  fCounterSigner; int /*<<< orphan*/  idxSigner; TYPE_1__ u; } ;
struct TYPE_11__ {int /*<<< orphan*/  pCert; } ;
typedef  TYPE_4__ TVITEMW ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HTREEITEM ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_5__ CRYPT_PROVIDER_SGNR ;
typedef  int /*<<< orphan*/  CRYPT_PROVIDER_DATA ;
typedef  TYPE_4__ CRYPTUI_VIEWCERTIFICATE_STRUCTW ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_CERTPATH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TVGN_CARET ; 
 int TVIF_HANDLE ; 
 int TVIF_PARAM ; 
 scalar_t__ TVI_ROOT ; 
 int /*<<< orphan*/  TVM_DELETEITEM ; 
 int /*<<< orphan*/  TVM_GETITEMW ; 
 int /*<<< orphan*/  TVM_GETNEXTITEM ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hierarchy_data* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct hierarchy_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct hierarchy_data*) ; 

__attribute__((used)) static void FUNC8(HWND hwnd)
{
    HWND tree = FUNC1(hwnd, IDC_CERTPATH);
    TVITEMW item;
    struct hierarchy_data *data;
    DWORD selection;

    FUNC6(&item, 0, sizeof(item));
    item.mask = TVIF_HANDLE | TVIF_PARAM;
    item.hItem = (HTREEITEM)FUNC2(tree, TVM_GETNEXTITEM, TVGN_CARET, 0);
    FUNC2(tree, TVM_GETITEMW, 0, (LPARAM)&item);
    data = FUNC4(tree, item.hItem);
    selection = FUNC5(data, item.lParam);
    if (selection != 0)
    {
        CRYPT_PROVIDER_SGNR *provSigner;
        CRYPTUI_VIEWCERTIFICATE_STRUCTW viewInfo;
        BOOL changed = FALSE;

        provSigner = FUNC3(
         (CRYPT_PROVIDER_DATA *)data->pCertViewInfo->u.pCryptProviderData,
         data->pCertViewInfo->idxSigner,
         data->pCertViewInfo->fCounterSigner,
         data->pCertViewInfo->idxCounterSigner);
        FUNC6(&viewInfo, 0, sizeof(viewInfo));
        viewInfo.dwSize = sizeof(viewInfo);
        viewInfo.dwFlags = data->pCertViewInfo->dwFlags;
        viewInfo.szTitle = data->pCertViewInfo->szTitle;
        viewInfo.pCertContext = provSigner->pasCertChain[selection].pCert;
        viewInfo.cStores = data->pCertViewInfo->cStores;
        viewInfo.rghStores = data->pCertViewInfo->rghStores;
        viewInfo.cPropSheetPages = data->pCertViewInfo->cPropSheetPages;
        viewInfo.rgPropSheetPages = data->pCertViewInfo->rgPropSheetPages;
        viewInfo.nStartPage = data->pCertViewInfo->nStartPage;
        FUNC0(&viewInfo, &changed);
        if (changed)
        {
            /* Delete the contents of the tree */
            FUNC2(tree, TVM_DELETEITEM, 0, (LPARAM)TVI_ROOT);
            /* Reinitialize the tree */
            FUNC7(hwnd, data);
        }
    }
}