
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int crl; int x509; } ;
struct TYPE_6__ {int type; TYPE_1__ data; } ;
typedef TYPE_2__ X509_OBJECT ;


 int X509_CRL_cmp (int ,int ) ;



 int X509_subject_name_cmp (int ,int ) ;

__attribute__((used)) static int x509_object_cmp(const X509_OBJECT *const *a,
                           const X509_OBJECT *const *b)
{
    int ret;

    ret = ((*a)->type - (*b)->type);
    if (ret)
        return ret;
    switch ((*a)->type) {
    case 128:
        ret = X509_subject_name_cmp((*a)->data.x509, (*b)->data.x509);
        break;
    case 130:
        ret = X509_CRL_cmp((*a)->data.crl, (*b)->data.crl);
        break;
    case 129:

        return 0;
    }
    return ret;
}
