
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct hierarchy_data {scalar_t__ imageList; TYPE_2__* pCertViewInfo; } ;
struct TYPE_22__ {int mask; int iImage; int iSelectedImage; int lParam; void* stateMask; void* state; scalar_t__ pszText; } ;
struct TYPE_23__ {TYPE_8__ item; } ;
struct TYPE_21__ {TYPE_6__* pChainElement; int pCert; } ;
struct TYPE_19__ {scalar_t__ dwErrorStatus; } ;
struct TYPE_20__ {TYPE_5__ TrustStatus; } ;
struct TYPE_17__ {int dwErrorStatus; } ;
struct TYPE_18__ {TYPE_3__ TrustStatus; } ;
struct TYPE_15__ {scalar_t__ pCryptProviderData; } ;
struct TYPE_16__ {int idxCounterSigner; int fCounterSigner; int idxSigner; TYPE_1__ u; } ;
struct TYPE_14__ {int csCertChain; TYPE_7__* pasCertChain; TYPE_4__* pChainContext; } ;
struct TYPE_13__ {TYPE_9__ u; int hInsertAfter; int * hParent; } ;
typedef TYPE_10__ TVINSERTSTRUCTW ;
typedef scalar_t__ LPWSTR ;
typedef int LPARAM ;
typedef int HWND ;
typedef int * HTREEITEM ;
typedef int DWORD ;
typedef TYPE_11__ CRYPT_PROVIDER_SGNR ;
typedef int CRYPT_PROVIDER_DATA ;


 int CERT_TRUST_IS_PARTIAL_CHAIN ;
 int GetDlgItem (int ,int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,scalar_t__) ;
 int IDC_CERTPATH ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int TVIF_IMAGE ;
 int TVIF_PARAM ;
 int TVIF_SELECTEDIMAGE ;
 int TVIF_STATE ;
 int TVIF_TEXT ;
 void* TVIS_EXPANDED ;
 int TVI_LAST ;
 int TVM_INSERTITEMW ;
 int TVM_SETIMAGELIST ;
 int TVSIL_NORMAL ;
 TYPE_11__* WTHelperGetProvSignerFromChain (int *,int ,int ,int ) ;
 scalar_t__ get_cert_display_name (int ) ;
 int index_to_lparam (struct hierarchy_data*,int) ;

__attribute__((used)) static void show_cert_chain(HWND hwnd, struct hierarchy_data *data)
{
    HWND tree = GetDlgItem(hwnd, IDC_CERTPATH);
    CRYPT_PROVIDER_SGNR *provSigner = WTHelperGetProvSignerFromChain(
     (CRYPT_PROVIDER_DATA *)data->pCertViewInfo->u.pCryptProviderData,
     data->pCertViewInfo->idxSigner, data->pCertViewInfo->fCounterSigner,
     data->pCertViewInfo->idxCounterSigner);
    DWORD i;
    HTREEITEM parent = ((void*)0);

    SendMessageW(tree, TVM_SETIMAGELIST, TVSIL_NORMAL, (LPARAM)data->imageList);
    for (i = provSigner->csCertChain; i; i--)
    {
        LPWSTR name;

        name = get_cert_display_name(provSigner->pasCertChain[i - 1].pCert);
        if (name)
        {
            TVINSERTSTRUCTW tvis;

            tvis.hParent = parent;
            tvis.hInsertAfter = TVI_LAST;
            tvis.u.item.mask = TVIF_TEXT | TVIF_STATE | TVIF_IMAGE |
             TVIF_SELECTEDIMAGE | TVIF_PARAM;
            tvis.u.item.pszText = name;
            tvis.u.item.state = TVIS_EXPANDED;
            tvis.u.item.stateMask = TVIS_EXPANDED;
            if (i == 1 && (!provSigner->pChainContext ||
             provSigner->pChainContext->TrustStatus.dwErrorStatus &
             CERT_TRUST_IS_PARTIAL_CHAIN))
            {




                tvis.u.item.iImage = 2;
            }
            else if (provSigner->pasCertChain[i - 1].pChainElement->TrustStatus.
             dwErrorStatus == 0)
                tvis.u.item.iImage = 0;
            else
                tvis.u.item.iImage = 1;
            tvis.u.item.iSelectedImage = tvis.u.item.iImage;
            tvis.u.item.lParam = index_to_lparam(data, i - 1);
            parent = (HTREEITEM)SendMessageW(tree, TVM_INSERTITEMW, 0,
             (LPARAM)&tvis);
            HeapFree(GetProcessHeap(), 0, name);
        }
    }
}
