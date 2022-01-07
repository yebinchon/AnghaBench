
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_5__ {int init; int evp_ctx; int * iv; int * key; int klen; int * evp_ciph; } ;
struct TYPE_4__ {TYPE_2__* ptr; } ;
typedef TYPE_1__ PX_Cipher ;
typedef TYPE_2__ OSSLCipher ;


 int EVP_CIPHER_CTX_set_key_length (int ,int ) ;
 int EVP_DecryptInit_ex (int ,int *,int *,int *,int *) ;
 int EVP_DecryptUpdate (int ,int *,int*,int const*,unsigned int) ;
 int PXE_CIPHER_INIT ;
 int PXE_DECRYPT_FAILED ;

__attribute__((used)) static int
gen_ossl_decrypt(PX_Cipher *c, const uint8 *data, unsigned dlen,
     uint8 *res)
{
 OSSLCipher *od = c->ptr;
 int outlen;

 if (!od->init)
 {
  if (!EVP_DecryptInit_ex(od->evp_ctx, od->evp_ciph, ((void*)0), ((void*)0), ((void*)0)))
   return PXE_CIPHER_INIT;
  if (!EVP_CIPHER_CTX_set_key_length(od->evp_ctx, od->klen))
   return PXE_CIPHER_INIT;
  if (!EVP_DecryptInit_ex(od->evp_ctx, ((void*)0), ((void*)0), od->key, od->iv))
   return PXE_CIPHER_INIT;
  od->init = 1;
 }

 if (!EVP_DecryptUpdate(od->evp_ctx, res, &outlen, data, dlen))
  return PXE_DECRYPT_FAILED;

 return 0;
}
