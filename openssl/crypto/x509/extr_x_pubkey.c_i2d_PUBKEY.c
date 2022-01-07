
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* pkey; } ;
typedef TYPE_2__ X509_PUBKEY ;
struct TYPE_12__ {TYPE_1__* ameth; } ;
struct TYPE_10__ {int (* pub_encode ) (TYPE_2__*,TYPE_3__ const*) ;} ;
typedef TYPE_3__ EVP_PKEY ;


 int X509_PUBKEY_free (TYPE_2__*) ;
 TYPE_2__* X509_PUBKEY_new () ;
 int i2d_X509_PUBKEY (TYPE_2__*,unsigned char**) ;
 int stub1 (TYPE_2__*,TYPE_3__ const*) ;

int i2d_PUBKEY(const EVP_PKEY *a, unsigned char **pp)
{
    X509_PUBKEY *xpk = ((void*)0);
    int ret = -1;

    if (a == ((void*)0))
        return 0;
    if ((xpk = X509_PUBKEY_new()) == ((void*)0))
        return -1;
    if (a->ameth != ((void*)0) && a->ameth->pub_encode != ((void*)0)
        && !a->ameth->pub_encode(xpk, a))
        goto error;
    xpk->pkey = (EVP_PKEY *)a;
    ret = i2d_X509_PUBKEY(xpk, pp);
    xpk->pkey = ((void*)0);
 error:
    X509_PUBKEY_free(xpk);
    return ret;
}
