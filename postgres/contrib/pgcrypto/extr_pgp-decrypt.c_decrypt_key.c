
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int key_len; int key; } ;
struct TYPE_5__ {int sess_key_len; int cipher_algo; int * sess_key; TYPE_1__ s2k; int s2k_cipher_algo; } ;
typedef TYPE_2__ PGP_Context ;
typedef int PGP_CFB ;


 int PXE_PGP_CORRUPT_DATA ;
 int pgp_cfb_create (int **,int ,int ,int ,int ,int *) ;
 int pgp_cfb_decrypt (int *,int const*,int,int *) ;
 int pgp_cfb_free (int *) ;
 int pgp_get_cipher_key_size (int ) ;
 int px_debug (char*,int ,int,int) ;

__attribute__((used)) static int
decrypt_key(PGP_Context *ctx, const uint8 *src, int len)
{
 int res;
 uint8 algo;
 PGP_CFB *cfb;

 res = pgp_cfb_create(&cfb, ctx->s2k_cipher_algo,
       ctx->s2k.key, ctx->s2k.key_len, 0, ((void*)0));
 if (res < 0)
  return res;

 pgp_cfb_decrypt(cfb, src, 1, &algo);
 src++;
 len--;

 pgp_cfb_decrypt(cfb, src, len, ctx->sess_key);
 pgp_cfb_free(cfb);
 ctx->sess_key_len = len;
 ctx->cipher_algo = algo;

 if (pgp_get_cipher_key_size(algo) != len)
 {
  px_debug("sesskey bad len: algo=%d, expected=%d, got=%d",
     algo, pgp_get_cipher_key_size(algo), len);
  return PXE_PGP_CORRUPT_DATA;
 }
 return 0;
}
