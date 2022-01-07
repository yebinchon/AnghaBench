
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maskHash; } ;
typedef TYPE_1__ RSA_OAEP_PARAMS ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_OP_FREE_PRE ;
 int X509_ALGOR_free (int ) ;

__attribute__((used)) static int rsa_oaep_cb(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                       void *exarg)
{
    if (operation == ASN1_OP_FREE_PRE) {
        RSA_OAEP_PARAMS *oaep = (RSA_OAEP_PARAMS *)*pval;
        X509_ALGOR_free(oaep->maskHash);
    }
    return 1;
}
