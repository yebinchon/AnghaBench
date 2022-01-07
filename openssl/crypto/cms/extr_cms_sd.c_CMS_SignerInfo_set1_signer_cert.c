
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_3__ {int * signer; int pkey; } ;
typedef TYPE_1__ CMS_SignerInfo ;


 int EVP_PKEY_free (int ) ;
 int X509_free (int *) ;
 int X509_get_pubkey (int *) ;
 int X509_up_ref (int *) ;

void CMS_SignerInfo_set1_signer_cert(CMS_SignerInfo *si, X509 *signer)
{
    if (signer) {
        X509_up_ref(signer);
        EVP_PKEY_free(si->pkey);
        si->pkey = X509_get_pubkey(signer);
    }
    X509_free(si->signer);
    si->signer = signer;
}
