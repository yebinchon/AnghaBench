
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int * cbc128_f ;
typedef void* block128_f ;
struct TYPE_6__ {int ks; } ;
struct TYPE_9__ {TYPE_1__ ks; } ;
struct TYPE_7__ {int * cbc; } ;
struct TYPE_8__ {int mode; TYPE_2__ stream; void* block; scalar_t__ enc; int * ks; } ;
typedef TYPE_3__ PROV_CIPHER_CTX ;
typedef TYPE_4__ PROV_CAMELLIA_CTX ;
typedef int CAMELLIA_KEY ;


 scalar_t__ Camellia_cbc_encrypt ;
 scalar_t__ Camellia_decrypt ;
 scalar_t__ Camellia_encrypt ;
 int Camellia_set_key (unsigned char const*,size_t,int *) ;
 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int EVP_CIPH_CBC_MODE ;
 int EVP_CIPH_ECB_MODE ;
 int EVP_R_ARIA_KEY_SETUP_FAILED ;

__attribute__((used)) static int cipher_hw_camellia_initkey(PROV_CIPHER_CTX *dat,
                                      const unsigned char *key, size_t keylen)
{
    int ret, mode = dat->mode;
    PROV_CAMELLIA_CTX *adat = (PROV_CAMELLIA_CTX *)dat;
    CAMELLIA_KEY *ks = &adat->ks.ks;

    dat->ks = ks;
    ret = Camellia_set_key(key, keylen * 8, ks);
    if (ret < 0) {
        ERR_raise(ERR_LIB_PROV, EVP_R_ARIA_KEY_SETUP_FAILED);
        return 0;
    }
    if (dat->enc || (mode != EVP_CIPH_ECB_MODE && mode != EVP_CIPH_CBC_MODE)) {
        dat->block = (block128_f) Camellia_encrypt;
        dat->stream.cbc = mode == EVP_CIPH_CBC_MODE ?
            (cbc128_f) Camellia_cbc_encrypt : ((void*)0);
    } else {
        dat->block = (block128_f) Camellia_decrypt;
        dat->stream.cbc = mode == EVP_CIPH_CBC_MODE ?
            (cbc128_f) Camellia_cbc_encrypt : ((void*)0);
    }
    return 1;
}
