
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* ameth; } ;
struct TYPE_10__ {int (* param_decode ) (TYPE_2__*,unsigned char const**,long) ;} ;
typedef TYPE_2__ EVP_PKEY ;


 int ASN1_F_D2I_KEYPARAMS ;
 int ASN1_R_UNSUPPORTED_TYPE ;
 int ASN1err (int ,int ) ;
 int EVP_PKEY_free (TYPE_2__*) ;
 int EVP_PKEY_id (TYPE_2__*) ;
 TYPE_2__* EVP_PKEY_new () ;
 int EVP_PKEY_set_type (TYPE_2__*,int) ;
 int stub1 (TYPE_2__*,unsigned char const**,long) ;

EVP_PKEY *d2i_KeyParams(int type, EVP_PKEY **a, const unsigned char **pp,
                        long length)
{
    EVP_PKEY *ret = ((void*)0);
    const unsigned char *p = *pp;

    if ((a == ((void*)0)) || (*a == ((void*)0))) {
        if ((ret = EVP_PKEY_new()) == ((void*)0))
            return ((void*)0);
    } else
        ret = *a;

    if (type != EVP_PKEY_id(ret) && !EVP_PKEY_set_type(ret, type))
        goto err;

    if (ret->ameth == ((void*)0) || ret->ameth->param_decode == ((void*)0)) {
        ASN1err(ASN1_F_D2I_KEYPARAMS, ASN1_R_UNSUPPORTED_TYPE);
        goto err;
    }

    if (!ret->ameth->param_decode(ret, &p, length))
        goto err;

    if (a != ((void*)0))
        (*a) = ret;
    return ret;
err:
    if (a == ((void*)0) || *a != ret)
        EVP_PKEY_free(ret);
    return ((void*)0);
}
