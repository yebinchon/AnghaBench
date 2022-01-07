
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int key_len; int key; } ;
struct TYPE_5__ {int sess_key_len; int * sess_key; TYPE_1__ s2k; int s2k_cipher_algo; int cipher_algo; } ;
typedef TYPE_2__ PGP_Context ;
typedef int PGP_CFB ;


 int pgp_cfb_create (int **,int ,int ,int ,int ,int *) ;
 int pgp_cfb_encrypt (int *,int *,int,int *) ;
 int pgp_cfb_free (int *) ;

__attribute__((used)) static int
symencrypt_sesskey(PGP_Context *ctx, uint8 *dst)
{
 int res;
 PGP_CFB *cfb;
 uint8 algo = ctx->cipher_algo;

 res = pgp_cfb_create(&cfb, ctx->s2k_cipher_algo,
       ctx->s2k.key, ctx->s2k.key_len, 0, ((void*)0));
 if (res < 0)
  return res;

 pgp_cfb_encrypt(cfb, &algo, 1, dst);
 pgp_cfb_encrypt(cfb, ctx->sess_key, ctx->sess_key_len, dst + 1);

 pgp_cfb_free(cfb);
 return ctx->sess_key_len + 1;
}
