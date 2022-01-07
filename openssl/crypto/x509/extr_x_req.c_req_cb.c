
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sm2_id; } ;
typedef TYPE_1__ X509_REQ ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_OCTET_STRING_free (int *) ;




__attribute__((used)) static int req_cb(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                  void *exarg)
{

    X509_REQ *ret = (X509_REQ *)*pval;

    switch (operation) {
    case 130:
        ASN1_OCTET_STRING_free(ret->sm2_id);

    case 128:
        ret->sm2_id = ((void*)0);
        break;

    case 129:
        ASN1_OCTET_STRING_free(ret->sm2_id);
        break;
    }


    return 1;
}
