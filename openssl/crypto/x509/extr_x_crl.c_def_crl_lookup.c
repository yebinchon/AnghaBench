
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ reason; int serialNumber; } ;
typedef TYPE_2__ X509_REVOKED ;
typedef int X509_NAME ;
struct TYPE_10__ {int * revoked; } ;
struct TYPE_12__ {TYPE_1__ crl; int lock; } ;
typedef TYPE_3__ X509_CRL ;
typedef int ASN1_INTEGER ;


 scalar_t__ ASN1_INTEGER_cmp (int *,int *) ;
 scalar_t__ CRL_REASON_REMOVE_FROM_CRL ;
 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 scalar_t__ crl_revoked_issuer_match (TYPE_3__*,int *,TYPE_2__*) ;
 int sk_X509_REVOKED_find (int *,TYPE_2__*) ;
 int sk_X509_REVOKED_is_sorted (int *) ;
 int sk_X509_REVOKED_num (int *) ;
 int sk_X509_REVOKED_sort (int *) ;
 TYPE_2__* sk_X509_REVOKED_value (int *,int) ;

__attribute__((used)) static int def_crl_lookup(X509_CRL *crl,
                          X509_REVOKED **ret, ASN1_INTEGER *serial,
                          X509_NAME *issuer)
{
    X509_REVOKED rtmp, *rev;
    int idx, num;

    if (crl->crl.revoked == ((void*)0))
        return 0;





    if (!sk_X509_REVOKED_is_sorted(crl->crl.revoked)) {
        CRYPTO_THREAD_write_lock(crl->lock);
        sk_X509_REVOKED_sort(crl->crl.revoked);
        CRYPTO_THREAD_unlock(crl->lock);
    }
    rtmp.serialNumber = *serial;
    idx = sk_X509_REVOKED_find(crl->crl.revoked, &rtmp);
    if (idx < 0)
        return 0;

    for (num = sk_X509_REVOKED_num(crl->crl.revoked); idx < num; idx++) {
        rev = sk_X509_REVOKED_value(crl->crl.revoked, idx);
        if (ASN1_INTEGER_cmp(&rev->serialNumber, serial))
            return 0;
        if (crl_revoked_issuer_match(crl, issuer, rev)) {
            if (ret)
                *ret = rev;
            if (rev->reason == CRL_REASON_REMOVE_FROM_CRL)
                return 2;
            return 1;
        }
    }
    return 0;
}
