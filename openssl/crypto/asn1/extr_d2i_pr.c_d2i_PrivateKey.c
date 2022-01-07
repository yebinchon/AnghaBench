
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* ameth; int * engine; } ;
struct TYPE_10__ {scalar_t__ priv_decode; int (* old_priv_decode ) (TYPE_2__*,unsigned char const**,long) ;} ;
typedef int PKCS8_PRIV_KEY_INFO ;
typedef TYPE_2__ EVP_PKEY ;


 int ASN1_F_D2I_PRIVATEKEY ;
 int ASN1_R_UNKNOWN_PUBLIC_KEY_TYPE ;
 int ASN1err (int ,int ) ;
 int ENGINE_finish (int *) ;
 int ERR_R_ASN1_LIB ;
 int ERR_R_EVP_LIB ;
 TYPE_2__* EVP_PKCS82PKEY (int *) ;
 int EVP_PKEY_free (TYPE_2__*) ;
 TYPE_2__* EVP_PKEY_new () ;
 int EVP_PKEY_set_type (TYPE_2__*,int) ;
 int PKCS8_PRIV_KEY_INFO_free (int *) ;
 int * d2i_PKCS8_PRIV_KEY_INFO (int *,unsigned char const**,long) ;
 int stub1 (TYPE_2__*,unsigned char const**,long) ;

EVP_PKEY *d2i_PrivateKey(int type, EVP_PKEY **a, const unsigned char **pp,
                         long length)
{
    EVP_PKEY *ret;
    const unsigned char *p = *pp;

    if ((a == ((void*)0)) || (*a == ((void*)0))) {
        if ((ret = EVP_PKEY_new()) == ((void*)0)) {
            ASN1err(ASN1_F_D2I_PRIVATEKEY, ERR_R_EVP_LIB);
            return ((void*)0);
        }
    } else {
        ret = *a;

        ENGINE_finish(ret->engine);
        ret->engine = ((void*)0);

    }

    if (!EVP_PKEY_set_type(ret, type)) {
        ASN1err(ASN1_F_D2I_PRIVATEKEY, ASN1_R_UNKNOWN_PUBLIC_KEY_TYPE);
        goto err;
    }

    if (!ret->ameth->old_priv_decode ||
        !ret->ameth->old_priv_decode(ret, &p, length)) {
        if (ret->ameth->priv_decode) {
            EVP_PKEY *tmp;
            PKCS8_PRIV_KEY_INFO *p8 = ((void*)0);
            p8 = d2i_PKCS8_PRIV_KEY_INFO(((void*)0), &p, length);
            if (p8 == ((void*)0))
                goto err;
            tmp = EVP_PKCS82PKEY(p8);
            PKCS8_PRIV_KEY_INFO_free(p8);
            if (tmp == ((void*)0))
                goto err;
            EVP_PKEY_free(ret);
            ret = tmp;
        } else {
            ASN1err(ASN1_F_D2I_PRIVATEKEY, ERR_R_ASN1_LIB);
            goto err;
        }
    }
    *pp = p;
    if (a != ((void*)0))
        (*a) = ret;
    return ret;
 err:
    if (a == ((void*)0) || *a != ret)
        EVP_PKEY_free(ret);
    return ((void*)0);
}
