
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ block128_f ;
struct TYPE_5__ {int ks; } ;
struct TYPE_7__ {TYPE_1__ ks; } ;
struct TYPE_6__ {int mode; scalar_t__ block; int * ks; scalar_t__ enc; } ;
typedef TYPE_2__ PROV_CIPHER_CTX ;
typedef TYPE_3__ PROV_ARIA_CTX ;
typedef int ARIA_KEY ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int EVP_CIPH_CBC_MODE ;
 int EVP_CIPH_ECB_MODE ;
 int EVP_R_ARIA_KEY_SETUP_FAILED ;
 scalar_t__ aria_encrypt ;
 int aria_set_decrypt_key (unsigned char const*,size_t,int *) ;
 int aria_set_encrypt_key (unsigned char const*,size_t,int *) ;

__attribute__((used)) static int cipher_hw_aria_initkey(PROV_CIPHER_CTX *dat,
                                  const unsigned char *key, size_t keylen)
{
    int ret, mode = dat->mode;
    PROV_ARIA_CTX *adat = (PROV_ARIA_CTX *)dat;
    ARIA_KEY *ks = &adat->ks.ks;

    if (dat->enc || (mode != EVP_CIPH_ECB_MODE && mode != EVP_CIPH_CBC_MODE))
        ret = aria_set_encrypt_key(key, keylen * 8, ks);
    else
        ret = aria_set_decrypt_key(key, keylen * 8, ks);
    if (ret < 0) {
        ERR_raise(ERR_LIB_PROV, EVP_R_ARIA_KEY_SETUP_FAILED);
        return 0;
    }
    dat->ks = ks;
    dat->block = (block128_f)aria_encrypt;
    return 1;
}
