
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int parFmt ;
typedef int charFmt ;
struct TYPE_22__ {int cbSize; int dwEffects; int dwMask; } ;
struct TYPE_21__ {scalar_t__ fSelfSigned; int fTrustedRoot; } ;
struct TYPE_20__ {int csCertChain; scalar_t__ dwError; TYPE_3__* pChainContext; TYPE_7__* pasCertChain; } ;
struct TYPE_19__ {int cbSize; int dxStartIndent; int dwMask; } ;
struct TYPE_15__ {scalar_t__ pCryptProviderData; } ;
struct TYPE_18__ {int idxCounterSigner; int fCounterSigner; int idxSigner; TYPE_1__ u; } ;
struct TYPE_16__ {int dwErrorStatus; } ;
struct TYPE_17__ {TYPE_2__ TrustStatus; } ;
typedef TYPE_4__* PCCRYPTUI_VIEWCERTIFICATE_STRUCTW ;
typedef TYPE_5__ PARAFORMAT2 ;
typedef int LPARAM ;
typedef int HWND ;
typedef TYPE_6__ CRYPT_PROVIDER_SGNR ;
typedef int CRYPT_PROVIDER_DATA ;
typedef TYPE_7__ CRYPT_PROVIDER_CERT ;
typedef TYPE_8__ CHARFORMATW ;


 int CERT_TRUST_IS_PARTIAL_CHAIN ;
 int CFE_BOLD ;
 int CFM_BOLD ;
 int EM_SETCHARFORMAT ;
 int GetDlgItem (int ,int ) ;
 int IDB_CERT ;
 int IDB_CERT_ERROR ;
 int IDB_CERT_WARNING ;
 int IDC_CERTIFICATE_ICON ;
 int IDC_CERTIFICATE_INFO ;
 int IDC_CERTIFICATE_STATUS ;
 int IDS_CERTIFICATEINFORMATION ;
 int IDS_CERT_INFO_BAD_SIG ;
 int IDS_CERT_INFO_PARTIAL_CHAIN ;
 int IDS_CERT_INFO_UNTRUSTED_CA ;
 int IDS_CERT_INFO_UNTRUSTED_ROOT ;
 int MY_INDENT ;
 int PFM_STARTINDENT ;
 int SCF_SELECTION ;
 int SendMessageW (int ,int ,int ,int ) ;
 scalar_t__ TRUST_E_CERT_SIGNATURE ;
 TYPE_6__* WTHelperGetProvSignerFromChain (int *,int ,int ,int ) ;
 int add_icon_to_control (int ,int ) ;
 int add_string_resource_with_paraformat_to_control (int ,int ,TYPE_5__*) ;
 int memset (TYPE_8__*,int ,int) ;
 int set_issuer_statement (int ,TYPE_4__*) ;
 int set_policy_text (int ,TYPE_4__*) ;

__attribute__((used)) static void set_cert_info(HWND hwnd,
 PCCRYPTUI_VIEWCERTIFICATE_STRUCTW pCertViewInfo)
{
    CHARFORMATW charFmt;
    PARAFORMAT2 parFmt;
    HWND icon = GetDlgItem(hwnd, IDC_CERTIFICATE_ICON);
    HWND text = GetDlgItem(hwnd, IDC_CERTIFICATE_INFO);
    CRYPT_PROVIDER_SGNR *provSigner = WTHelperGetProvSignerFromChain(
     (CRYPT_PROVIDER_DATA *)pCertViewInfo->u.pCryptProviderData,
     pCertViewInfo->idxSigner, pCertViewInfo->fCounterSigner,
     pCertViewInfo->idxCounterSigner);
    CRYPT_PROVIDER_CERT *root =
     &provSigner->pasCertChain[provSigner->csCertChain - 1];

    if (!provSigner->pChainContext ||
     (provSigner->pChainContext->TrustStatus.dwErrorStatus &
     CERT_TRUST_IS_PARTIAL_CHAIN))
        add_icon_to_control(icon, IDB_CERT_WARNING);
    else if (!root->fTrustedRoot)
        add_icon_to_control(icon, IDB_CERT_ERROR);
    else
        add_icon_to_control(icon, IDB_CERT);

    memset(&charFmt, 0, sizeof(charFmt));
    charFmt.cbSize = sizeof(charFmt);
    charFmt.dwMask = CFM_BOLD;
    charFmt.dwEffects = CFE_BOLD;
    SendMessageW(text, EM_SETCHARFORMAT, SCF_SELECTION, (LPARAM)&charFmt);

    parFmt.cbSize = sizeof(parFmt);
    parFmt.dwMask = PFM_STARTINDENT;
    parFmt.dxStartIndent = MY_INDENT;
    add_string_resource_with_paraformat_to_control(text,
     IDS_CERTIFICATEINFORMATION, &parFmt);

    text = GetDlgItem(hwnd, IDC_CERTIFICATE_STATUS);
    SendMessageW(text, EM_SETCHARFORMAT, SCF_SELECTION, (LPARAM)&charFmt);
    if (provSigner->dwError == TRUST_E_CERT_SIGNATURE)
        add_string_resource_with_paraformat_to_control(text,
         IDS_CERT_INFO_BAD_SIG, &parFmt);
    else if (!provSigner->pChainContext ||
     (provSigner->pChainContext->TrustStatus.dwErrorStatus &
     CERT_TRUST_IS_PARTIAL_CHAIN))
        add_string_resource_with_paraformat_to_control(text,
         IDS_CERT_INFO_PARTIAL_CHAIN, &parFmt);
    else if (!root->fTrustedRoot)
    {
        if (provSigner->csCertChain == 1 && root->fSelfSigned)
            add_string_resource_with_paraformat_to_control(text,
             IDS_CERT_INFO_UNTRUSTED_CA, &parFmt);
        else
            add_string_resource_with_paraformat_to_control(text,
             IDS_CERT_INFO_UNTRUSTED_ROOT, &parFmt);
    }
    else
    {
        set_policy_text(text, pCertViewInfo);
        set_issuer_statement(hwnd, pCertViewInfo);
    }
}
