
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int enc_key; int cert; } ;
typedef TYPE_1__ PKCS7_RECIP_INFO ;
typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;


 int ASN1_STRING_set0 (int ,unsigned char*,size_t) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_PKEY_CTRL_PKCS7_ENCRYPT ;
 scalar_t__ EVP_PKEY_CTX_ctrl (int *,int,int ,int ,int ,TYPE_1__*) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 int EVP_PKEY_OP_ENCRYPT ;
 scalar_t__ EVP_PKEY_encrypt (int *,unsigned char*,size_t*,unsigned char*,int) ;
 scalar_t__ EVP_PKEY_encrypt_init (int *) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int PKCS7_F_PKCS7_ENCODE_RINFO ;
 int PKCS7_R_CTRL_ERROR ;
 int PKCS7err (int ,int ) ;
 int * X509_get0_pubkey (int ) ;

__attribute__((used)) static int pkcs7_encode_rinfo(PKCS7_RECIP_INFO *ri,
                              unsigned char *key, int keylen)
{
    EVP_PKEY_CTX *pctx = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);
    unsigned char *ek = ((void*)0);
    int ret = 0;
    size_t eklen;

    pkey = X509_get0_pubkey(ri->cert);
    if (pkey == ((void*)0))
        return 0;

    pctx = EVP_PKEY_CTX_new(pkey, ((void*)0));
    if (pctx == ((void*)0))
        return 0;

    if (EVP_PKEY_encrypt_init(pctx) <= 0)
        goto err;

    if (EVP_PKEY_CTX_ctrl(pctx, -1, EVP_PKEY_OP_ENCRYPT,
                          EVP_PKEY_CTRL_PKCS7_ENCRYPT, 0, ri) <= 0) {
        PKCS7err(PKCS7_F_PKCS7_ENCODE_RINFO, PKCS7_R_CTRL_ERROR);
        goto err;
    }

    if (EVP_PKEY_encrypt(pctx, ((void*)0), &eklen, key, keylen) <= 0)
        goto err;

    ek = OPENSSL_malloc(eklen);

    if (ek == ((void*)0)) {
        PKCS7err(PKCS7_F_PKCS7_ENCODE_RINFO, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    if (EVP_PKEY_encrypt(pctx, ek, &eklen, key, keylen) <= 0)
        goto err;

    ASN1_STRING_set0(ri->enc_key, ek, eklen);
    ek = ((void*)0);

    ret = 1;

 err:
    EVP_PKEY_CTX_free(pctx);
    OPENSSL_free(ek);
    return ret;

}
