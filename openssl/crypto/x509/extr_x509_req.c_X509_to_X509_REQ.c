
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* version; } ;
typedef TYPE_2__ X509_REQ_INFO ;
struct TYPE_12__ {TYPE_2__ req_info; } ;
typedef TYPE_3__ X509_REQ ;
typedef int X509 ;
struct TYPE_10__ {int length; scalar_t__* data; } ;
typedef int EVP_PKEY ;
typedef int EVP_MD ;


 int ERR_R_MALLOC_FAILURE ;
 scalar_t__* OPENSSL_malloc (int) ;
 int X509_F_X509_TO_X509_REQ ;
 int X509_REQ_free (TYPE_3__*) ;
 TYPE_3__* X509_REQ_new () ;
 int X509_REQ_set_pubkey (TYPE_3__*,int *) ;
 int X509_REQ_set_subject_name (TYPE_3__*,int ) ;
 int X509_REQ_sign (TYPE_3__*,int *,int const*) ;
 int * X509_get0_pubkey (int *) ;
 int X509_get_subject_name (int *) ;
 int X509err (int ,int ) ;

X509_REQ *X509_to_X509_REQ(X509 *x, EVP_PKEY *pkey, const EVP_MD *md)
{
    X509_REQ *ret;
    X509_REQ_INFO *ri;
    int i;
    EVP_PKEY *pktmp;

    ret = X509_REQ_new();
    if (ret == ((void*)0)) {
        X509err(X509_F_X509_TO_X509_REQ, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    ri = &ret->req_info;

    ri->version->length = 1;
    ri->version->data = OPENSSL_malloc(1);
    if (ri->version->data == ((void*)0))
        goto err;
    ri->version->data[0] = 0;

    if (!X509_REQ_set_subject_name(ret, X509_get_subject_name(x)))
        goto err;

    pktmp = X509_get0_pubkey(x);
    if (pktmp == ((void*)0))
        goto err;
    i = X509_REQ_set_pubkey(ret, pktmp);
    if (!i)
        goto err;

    if (pkey != ((void*)0)) {
        if (!X509_REQ_sign(ret, pkey, md))
            goto err;
    }
    return ret;
 err:
    X509_REQ_free(ret);
    return ((void*)0);
}
