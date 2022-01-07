
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ossl_cipher_lookup {TYPE_1__* ciph; int * name; } ;
struct TYPE_11__ {TYPE_1__* ciph; int evp_ciph; int * prev; struct TYPE_11__* next; int owner; int * evp_ctx; } ;
struct TYPE_10__ {TYPE_3__* ptr; int decrypt; int encrypt; int init; int free; int iv_size; int key_size; int block_size; } ;
struct TYPE_9__ {int init; int (* cipher_func ) () ;} ;
typedef TYPE_2__ PX_Cipher ;
typedef TYPE_3__ OSSLCipher ;
typedef int EVP_CIPHER_CTX ;


 int CurrentResourceOwner ;
 int * EVP_CIPHER_CTX_new () ;
 TYPE_3__* MemoryContextAllocZero (int ,int) ;
 int PXE_CIPHER_INIT ;
 int PXE_NO_CIPHER ;
 int RegisterResourceReleaseCallback (int ,int *) ;
 int TopMemoryContext ;
 int cipher_free_callback ;
 int cipher_resowner_callback_registered ;
 int gen_ossl_block_size ;
 int gen_ossl_decrypt ;
 int gen_ossl_encrypt ;
 int gen_ossl_free ;
 int gen_ossl_iv_size ;
 int gen_ossl_key_size ;
 TYPE_3__* open_ciphers ;
 int ossl_aliases ;
 struct ossl_cipher_lookup* ossl_cipher_types ;
 int pfree (TYPE_3__*) ;
 TYPE_2__* px_alloc (int) ;
 char* px_resolve_alias (int ,char const*) ;
 scalar_t__ strcmp (int *,char const*) ;
 int stub1 () ;

int
px_find_cipher(const char *name, PX_Cipher **res)
{
 const struct ossl_cipher_lookup *i;
 PX_Cipher *c = ((void*)0);
 EVP_CIPHER_CTX *ctx;
 OSSLCipher *od;

 name = px_resolve_alias(ossl_aliases, name);
 for (i = ossl_cipher_types; i->name; i++)
  if (strcmp(i->name, name) == 0)
   break;
 if (i->name == ((void*)0))
  return PXE_NO_CIPHER;

 if (!cipher_resowner_callback_registered)
 {
  RegisterResourceReleaseCallback(cipher_free_callback, ((void*)0));
  cipher_resowner_callback_registered = 1;
 }






 od = MemoryContextAllocZero(TopMemoryContext, sizeof(*od));
 od->ciph = i->ciph;


 ctx = EVP_CIPHER_CTX_new();
 if (!ctx)
 {
  pfree(od);
  return PXE_CIPHER_INIT;
 }

 od->evp_ctx = ctx;
 od->owner = CurrentResourceOwner;
 od->next = open_ciphers;
 od->prev = ((void*)0);
 open_ciphers = od;

 if (i->ciph->cipher_func)
  od->evp_ciph = i->ciph->cipher_func();


 c = px_alloc(sizeof(*c));
 c->block_size = gen_ossl_block_size;
 c->key_size = gen_ossl_key_size;
 c->iv_size = gen_ossl_iv_size;
 c->free = gen_ossl_free;
 c->init = od->ciph->init;
 c->encrypt = gen_ossl_encrypt;
 c->decrypt = gen_ossl_decrypt;
 c->ptr = od;

 *res = c;
 return 0;
}
