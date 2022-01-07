
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pCryptProviderData; } ;
struct TYPE_5__ {int idxCert; int idxCounterSigner; int fCounterSigner; int idxSigner; TYPE_1__ u; } ;
typedef TYPE_2__* PCCRYPTUI_VIEWCERTIFICATE_STRUCTW ;
typedef int HWND ;
typedef int CRYPT_PROVIDER_SGNR ;
typedef int CRYPT_PROVIDER_DATA ;
typedef int CRYPT_PROVIDER_CERT ;


 int GetDlgItem (int ,int ) ;
 int IDC_CERTIFICATESTATUSTEXT ;
 int * WTHelperGetProvCertFromChain (int *,int ) ;
 int * WTHelperGetProvSignerFromChain (int *,int ,int ,int ) ;
 int set_certificate_status (int ,int *) ;

__attribute__((used)) static void set_certificate_status_for_end_cert(HWND hwnd,
 PCCRYPTUI_VIEWCERTIFICATE_STRUCTW pCertViewInfo)
{
    HWND status = GetDlgItem(hwnd, IDC_CERTIFICATESTATUSTEXT);
    CRYPT_PROVIDER_SGNR *provSigner = WTHelperGetProvSignerFromChain(
     (CRYPT_PROVIDER_DATA *)pCertViewInfo->u.pCryptProviderData,
     pCertViewInfo->idxSigner, pCertViewInfo->fCounterSigner,
     pCertViewInfo->idxCounterSigner);
    CRYPT_PROVIDER_CERT *provCert = WTHelperGetProvCertFromChain(provSigner,
     pCertViewInfo->idxCert);

    set_certificate_status(status, provCert);
}
