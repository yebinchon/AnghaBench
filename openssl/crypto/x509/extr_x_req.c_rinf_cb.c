
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attributes; } ;
typedef TYPE_1__ X509_REQ_INFO ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int ASN1_OP_NEW_POST ;
 int sk_X509_ATTRIBUTE_new_null () ;

__attribute__((used)) static int rinf_cb(int operation, ASN1_VALUE **pval, const ASN1_ITEM *it,
                   void *exarg)
{
    X509_REQ_INFO *rinf = (X509_REQ_INFO *)*pval;

    if (operation == ASN1_OP_NEW_POST) {
        rinf->attributes = sk_X509_ATTRIBUTE_new_null();
        if (!rinf->attributes)
            return 0;
    }
    return 1;
}
