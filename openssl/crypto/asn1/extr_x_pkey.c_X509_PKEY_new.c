
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * enc_pkey; int * enc_algor; } ;
typedef TYPE_1__ X509_PKEY ;


 int ASN1_F_X509_PKEY_NEW ;
 int * ASN1_OCTET_STRING_new () ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int * X509_ALGOR_new () ;
 int X509_PKEY_free (TYPE_1__*) ;

X509_PKEY *X509_PKEY_new(void)
{
    X509_PKEY *ret = ((void*)0);

    ret = OPENSSL_zalloc(sizeof(*ret));
    if (ret == ((void*)0))
        goto err;

    ret->enc_algor = X509_ALGOR_new();
    ret->enc_pkey = ASN1_OCTET_STRING_new();
    if (ret->enc_algor == ((void*)0) || ret->enc_pkey == ((void*)0))
        goto err;

    return ret;
err:
    X509_PKEY_free(ret);
    ASN1err(ASN1_F_X509_PKEY_NEW, ERR_R_MALLOC_FAILURE);
    return ((void*)0);
}
