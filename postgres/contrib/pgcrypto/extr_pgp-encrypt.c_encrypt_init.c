
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
struct EncStat {int * ciph; } ;
struct TYPE_2__ {scalar_t__ disable_mdc; int sess_key_len; int sess_key; int cipher_algo; } ;
typedef int PushFilter ;
typedef TYPE_1__ PGP_Context ;
typedef int PGP_CFB ;


 int ENCBUF ;
 int memset (struct EncStat*,int ,int) ;
 int pgp_cfb_create (int **,int ,int ,int ,int,int *) ;
 int pushf_write (int *,int*,int) ;
 struct EncStat* px_alloc (int) ;

__attribute__((used)) static int
encrypt_init(PushFilter *next, void *init_arg, void **priv_p)
{
 struct EncStat *st;
 PGP_Context *ctx = init_arg;
 PGP_CFB *ciph;
 int resync = 1;
 int res;


 if (ctx->disable_mdc == 0)
 {
  uint8 ver = 1;

  resync = 0;
  res = pushf_write(next, &ver, 1);
  if (res < 0)
   return res;
 }
 res = pgp_cfb_create(&ciph, ctx->cipher_algo,
       ctx->sess_key, ctx->sess_key_len, resync, ((void*)0));
 if (res < 0)
  return res;

 st = px_alloc(sizeof(*st));
 memset(st, 0, sizeof(*st));
 st->ciph = ciph;

 *priv_p = st;
 return ENCBUF;
}
