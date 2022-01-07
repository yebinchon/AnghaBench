
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int viewInfo ;
struct hierarchy_data {TYPE_3__* pCertViewInfo; } ;
typedef int item ;
struct TYPE_14__ {TYPE_2__* pasCertChain; } ;
struct TYPE_13__ {int mask; int dwSize; int nStartPage; int rgPropSheetPages; int cPropSheetPages; int rghStores; int cStores; int pCertContext; int szTitle; int dwFlags; int lParam; scalar_t__ hItem; } ;
struct TYPE_10__ {scalar_t__ pCryptProviderData; } ;
struct TYPE_12__ {int nStartPage; int rgPropSheetPages; int cPropSheetPages; int rghStores; int cStores; int szTitle; int dwFlags; int idxCounterSigner; int fCounterSigner; int idxSigner; TYPE_1__ u; } ;
struct TYPE_11__ {int pCert; } ;
typedef TYPE_4__ TVITEMW ;
typedef int LPARAM ;
typedef int HWND ;
typedef scalar_t__ HTREEITEM ;
typedef scalar_t__ DWORD ;
typedef TYPE_5__ CRYPT_PROVIDER_SGNR ;
typedef int CRYPT_PROVIDER_DATA ;
typedef TYPE_4__ CRYPTUI_VIEWCERTIFICATE_STRUCTW ;
typedef scalar_t__ BOOL ;


 int CryptUIDlgViewCertificateW (TYPE_4__*,scalar_t__*) ;
 scalar_t__ FALSE ;
 int GetDlgItem (int ,int ) ;
 int IDC_CERTPATH ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int TVGN_CARET ;
 int TVIF_HANDLE ;
 int TVIF_PARAM ;
 scalar_t__ TVI_ROOT ;
 int TVM_DELETEITEM ;
 int TVM_GETITEMW ;
 int TVM_GETNEXTITEM ;
 TYPE_5__* WTHelperGetProvSignerFromChain (int *,int ,int ,int ) ;
 struct hierarchy_data* get_hierarchy_data_from_tree_item (int ,scalar_t__) ;
 scalar_t__ lparam_to_index (struct hierarchy_data*,int ) ;
 int memset (TYPE_4__*,int ,int) ;
 int show_cert_hierarchy (int ,struct hierarchy_data*) ;

__attribute__((used)) static void show_dialog_for_selected_cert(HWND hwnd)
{
    HWND tree = GetDlgItem(hwnd, IDC_CERTPATH);
    TVITEMW item;
    struct hierarchy_data *data;
    DWORD selection;

    memset(&item, 0, sizeof(item));
    item.mask = TVIF_HANDLE | TVIF_PARAM;
    item.hItem = (HTREEITEM)SendMessageW(tree, TVM_GETNEXTITEM, TVGN_CARET, 0);
    SendMessageW(tree, TVM_GETITEMW, 0, (LPARAM)&item);
    data = get_hierarchy_data_from_tree_item(tree, item.hItem);
    selection = lparam_to_index(data, item.lParam);
    if (selection != 0)
    {
        CRYPT_PROVIDER_SGNR *provSigner;
        CRYPTUI_VIEWCERTIFICATE_STRUCTW viewInfo;
        BOOL changed = FALSE;

        provSigner = WTHelperGetProvSignerFromChain(
         (CRYPT_PROVIDER_DATA *)data->pCertViewInfo->u.pCryptProviderData,
         data->pCertViewInfo->idxSigner,
         data->pCertViewInfo->fCounterSigner,
         data->pCertViewInfo->idxCounterSigner);
        memset(&viewInfo, 0, sizeof(viewInfo));
        viewInfo.dwSize = sizeof(viewInfo);
        viewInfo.dwFlags = data->pCertViewInfo->dwFlags;
        viewInfo.szTitle = data->pCertViewInfo->szTitle;
        viewInfo.pCertContext = provSigner->pasCertChain[selection].pCert;
        viewInfo.cStores = data->pCertViewInfo->cStores;
        viewInfo.rghStores = data->pCertViewInfo->rghStores;
        viewInfo.cPropSheetPages = data->pCertViewInfo->cPropSheetPages;
        viewInfo.rgPropSheetPages = data->pCertViewInfo->rgPropSheetPages;
        viewInfo.nStartPage = data->pCertViewInfo->nStartPage;
        CryptUIDlgViewCertificateW(&viewInfo, &changed);
        if (changed)
        {

            SendMessageW(tree, TVM_DELETEITEM, 0, (LPARAM)TVI_ROOT);

            show_cert_hierarchy(hwnd, data);
        }
    }
}
