
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ trust; scalar_t__ reject; } ;
typedef TYPE_1__ X509_CERT_AUX ;
struct TYPE_6__ {TYPE_1__* aux; } ;
typedef TYPE_2__ X509 ;
typedef int ASN1_OBJECT ;


 int NID_anyExtendedKeyUsage ;
 int OBJ_obj2nid (int *) ;
 int X509_TRUST_DO_SS_COMPAT ;
 int X509_TRUST_OK_ANY_EKU ;
 int X509_TRUST_REJECTED ;
 int X509_TRUST_TRUSTED ;
 int X509_TRUST_UNTRUSTED ;
 int sk_ASN1_OBJECT_num (scalar_t__) ;
 int * sk_ASN1_OBJECT_value (scalar_t__,int) ;
 int trust_compat (int *,TYPE_2__*,int) ;

__attribute__((used)) static int obj_trust(int id, X509 *x, int flags)
{
    X509_CERT_AUX *ax = x->aux;
    int i;

    if (ax && ax->reject) {
        for (i = 0; i < sk_ASN1_OBJECT_num(ax->reject); i++) {
            ASN1_OBJECT *obj = sk_ASN1_OBJECT_value(ax->reject, i);
            int nid = OBJ_obj2nid(obj);

            if (nid == id || (nid == NID_anyExtendedKeyUsage &&
                (flags & X509_TRUST_OK_ANY_EKU)))
                return X509_TRUST_REJECTED;
        }
    }

    if (ax && ax->trust) {
        for (i = 0; i < sk_ASN1_OBJECT_num(ax->trust); i++) {
            ASN1_OBJECT *obj = sk_ASN1_OBJECT_value(ax->trust, i);
            int nid = OBJ_obj2nid(obj);

            if (nid == id || (nid == NID_anyExtendedKeyUsage &&
                (flags & X509_TRUST_OK_ANY_EKU)))
                return X509_TRUST_TRUSTED;
        }
        return X509_TRUST_REJECTED;
    }

    if ((flags & X509_TRUST_DO_SS_COMPAT) == 0)
        return X509_TRUST_UNTRUSTED;




    return trust_compat(((void*)0), x, flags);
}
