
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pem_password_cb ;
typedef int i2d_of_void ;
struct TYPE_6__ {TYPE_1__* ameth; } ;
struct TYPE_5__ {int pem_str; } ;
typedef TYPE_2__ EVP_PKEY ;
typedef int EVP_CIPHER ;
typedef int BIO ;


 int BIO_snprintf (char*,int,char*,int ) ;
 int PEM_ASN1_write_bio (int *,char*,int *,TYPE_2__*,int const*,unsigned char*,int,int *,void*) ;
 scalar_t__ i2d_PrivateKey ;

int PEM_write_bio_PrivateKey_traditional(BIO *bp, EVP_PKEY *x,
                                         const EVP_CIPHER *enc,
                                         unsigned char *kstr, int klen,
                                         pem_password_cb *cb, void *u)
{
    char pem_str[80];
    BIO_snprintf(pem_str, 80, "%s PRIVATE KEY", x->ameth->pem_str);
    return PEM_ASN1_write_bio((i2d_of_void *)i2d_PrivateKey,
                              pem_str, bp, x, enc, kstr, klen, cb, u);
}
