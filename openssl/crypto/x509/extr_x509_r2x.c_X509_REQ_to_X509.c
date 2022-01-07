
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int attributes; } ;
struct TYPE_18__ {TYPE_1__ req_info; } ;
typedef TYPE_3__ X509_REQ ;
typedef int X509_NAME ;
struct TYPE_17__ {int notAfter; int notBefore; } ;
struct TYPE_19__ {TYPE_2__ validity; int * version; } ;
typedef TYPE_4__ X509_CINF ;
struct TYPE_20__ {TYPE_4__ cert_info; } ;
typedef TYPE_5__ X509 ;
typedef int EVP_PKEY ;


 int * ASN1_INTEGER_new () ;
 int ASN1_INTEGER_set (int *,int) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_md5 () ;
 int X509_F_X509_REQ_TO_X509 ;
 int * X509_REQ_get0_pubkey (TYPE_3__*) ;
 int * X509_REQ_get_subject_name (TYPE_3__*) ;
 int X509_free (TYPE_5__*) ;
 int * X509_gmtime_adj (int ,long) ;
 TYPE_5__* X509_new () ;
 scalar_t__ X509_set_issuer_name (TYPE_5__*,int *) ;
 int X509_set_pubkey (TYPE_5__*,int *) ;
 scalar_t__ X509_set_subject_name (TYPE_5__*,int *) ;
 int X509_sign (TYPE_5__*,int *,int ) ;
 int X509err (int ,int ) ;
 scalar_t__ sk_X509_ATTRIBUTE_num (int ) ;

X509 *X509_REQ_to_X509(X509_REQ *r, int days, EVP_PKEY *pkey)
{
    X509 *ret = ((void*)0);
    X509_CINF *xi = ((void*)0);
    X509_NAME *xn;
    EVP_PKEY *pubkey = ((void*)0);

    if ((ret = X509_new()) == ((void*)0)) {
        X509err(X509_F_X509_REQ_TO_X509, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }


    xi = &ret->cert_info;

    if (sk_X509_ATTRIBUTE_num(r->req_info.attributes) != 0) {
        if ((xi->version = ASN1_INTEGER_new()) == ((void*)0))
            goto err;
        if (!ASN1_INTEGER_set(xi->version, 2))
            goto err;


    }

    xn = X509_REQ_get_subject_name(r);
    if (X509_set_subject_name(ret, xn) == 0)
        goto err;
    if (X509_set_issuer_name(ret, xn) == 0)
        goto err;

    if (X509_gmtime_adj(xi->validity.notBefore, 0) == ((void*)0))
        goto err;
    if (X509_gmtime_adj(xi->validity.notAfter, (long)60 * 60 * 24 * days) ==
        ((void*)0))
        goto err;

    pubkey = X509_REQ_get0_pubkey(r);
    if (pubkey == ((void*)0) || !X509_set_pubkey(ret, pubkey))
        goto err;

    if (!X509_sign(ret, pkey, EVP_md5()))
        goto err;
    return ret;

 err:
    X509_free(ret);
    return ((void*)0);
}
