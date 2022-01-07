
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* ctr128_f ;
typedef int * cbc128_f ;
typedef void* block128_f ;
struct TYPE_6__ {int ks; } ;
struct TYPE_9__ {TYPE_1__ ks; } ;
struct TYPE_7__ {void* ctr; int * cbc; } ;
struct TYPE_8__ {scalar_t__ mode; TYPE_2__ stream; void* block; int enc; int * ks; } ;
typedef TYPE_3__ PROV_CIPHER_CTX ;
typedef TYPE_4__ PROV_AES_CTX ;
typedef int AES_KEY ;


 scalar_t__ AES_cbc_encrypt ;
 scalar_t__ AES_ctr32_encrypt ;
 scalar_t__ AES_decrypt ;
 scalar_t__ AES_encrypt ;
 int AES_set_decrypt_key (unsigned char const*,size_t,int *) ;
 int AES_set_encrypt_key (unsigned char const*,size_t,int *) ;
 scalar_t__ BSAES_CAPABLE ;
 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 scalar_t__ EVP_CIPH_CBC_MODE ;
 scalar_t__ EVP_CIPH_CTR_MODE ;
 scalar_t__ EVP_CIPH_ECB_MODE ;
 scalar_t__ HWAES_CAPABLE ;
 scalar_t__ HWAES_cbc_encrypt ;
 scalar_t__ HWAES_ctr32_encrypt_blocks ;
 scalar_t__ HWAES_decrypt ;
 scalar_t__ HWAES_encrypt ;
 int HWAES_set_decrypt_key (unsigned char const*,size_t,int *) ;
 int HWAES_set_encrypt_key (unsigned char const*,size_t,int *) ;
 int PROV_R_AES_KEY_SETUP_FAILED ;
 scalar_t__ VPAES_CAPABLE ;
 scalar_t__ bsaes_cbc_encrypt ;
 scalar_t__ bsaes_ctr32_encrypt_blocks ;
 scalar_t__ vpaes_cbc_encrypt ;
 scalar_t__ vpaes_decrypt ;
 scalar_t__ vpaes_encrypt ;
 int vpaes_set_decrypt_key (unsigned char const*,size_t,int *) ;
 int vpaes_set_encrypt_key (unsigned char const*,size_t,int *) ;

__attribute__((used)) static int cipher_hw_aes_initkey(PROV_CIPHER_CTX *dat,
                                 const unsigned char *key, size_t keylen)
{
    int ret;
    PROV_AES_CTX *adat = (PROV_AES_CTX *)dat;
    AES_KEY *ks = &adat->ks.ks;

    dat->ks = ks;

    if ((dat->mode == EVP_CIPH_ECB_MODE || dat->mode == EVP_CIPH_CBC_MODE)
        && !dat->enc) {
        {
            ret = AES_set_decrypt_key(key, keylen * 8, ks);
            dat->block = (block128_f)AES_decrypt;
            dat->stream.cbc = (dat->mode == EVP_CIPH_CBC_MODE)
                              ? (cbc128_f)AES_cbc_encrypt : ((void*)0);
        }
    } else
    {
        ret = AES_set_encrypt_key(key, keylen * 8, ks);
        dat->block = (block128_f)AES_encrypt;
        dat->stream.cbc = (dat->mode == EVP_CIPH_CBC_MODE)
                          ? (cbc128_f)AES_cbc_encrypt : ((void*)0);




    }

    if (ret < 0) {
        ERR_raise(ERR_LIB_PROV, PROV_R_AES_KEY_SETUP_FAILED);
        return 0;
    }

    return 1;
}
