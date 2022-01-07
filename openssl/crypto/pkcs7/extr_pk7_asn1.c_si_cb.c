
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pkey; } ;
typedef TYPE_1__ PKCS7_SIGNER_INFO ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_OP_FREE_POST ;
 int EVP_PKEY_free (int ) ;

__attribute__((used)) static int si_cb(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                 void *exarg)
{
    if (operation == ASN1_OP_FREE_POST) {
        PKCS7_SIGNER_INFO *si = (PKCS7_SIGNER_INFO *)*pval;
        EVP_PKEY_free(si->pkey);
    }
    return 1;
}
