
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int aux; } ;
typedef TYPE_1__ X509 ;


 int X509_free (TYPE_1__*) ;
 TYPE_1__* d2i_X509 (TYPE_1__**,unsigned char const**,long) ;
 int d2i_X509_CERT_AUX (int *,unsigned char const**,long) ;

X509 *d2i_X509_AUX(X509 **a, const unsigned char **pp, long length)
{
    const unsigned char *q;
    X509 *ret;
    int freeret = 0;


    q = *pp;

    if (a == ((void*)0) || *a == ((void*)0))
        freeret = 1;
    ret = d2i_X509(a, &q, length);

    if (ret == ((void*)0))
        return ((void*)0);

    length -= q - *pp;
    if (length > 0 && !d2i_X509_CERT_AUX(&ret->aux, &q, length))
        goto err;
    *pp = q;
    return ret;
 err:
    if (freeret) {
        X509_free(ret);
        if (a)
            *a = ((void*)0);
    }
    return ((void*)0);
}
