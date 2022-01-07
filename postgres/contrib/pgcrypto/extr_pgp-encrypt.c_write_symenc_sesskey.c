
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_5__ {int mode; int iter; int salt; int digest_algo; } ;
struct TYPE_6__ {scalar_t__ use_sess_key; TYPE_1__ s2k; int s2k_cipher_algo; } ;
typedef int PushFilter ;
typedef TYPE_2__ PGP_Context ;


 int PGP_PKT_SYMENCRYPTED_SESSKEY ;
 int memcpy (int *,int ,int) ;
 int pushf_write (int *,int *,int) ;
 int px_memset (int *,int ,int) ;
 int symencrypt_sesskey (TYPE_2__*,int *) ;
 int write_normal_header (int *,int ,int) ;

__attribute__((used)) static int
write_symenc_sesskey(PGP_Context *ctx, PushFilter *dst)
{
 uint8 pkt[256];
 int pktlen;
 int res;
 uint8 *p = pkt;

 *p++ = 4;
 *p++ = ctx->s2k_cipher_algo;

 *p++ = ctx->s2k.mode;
 *p++ = ctx->s2k.digest_algo;
 if (ctx->s2k.mode > 0)
 {
  memcpy(p, ctx->s2k.salt, 8);
  p += 8;
 }
 if (ctx->s2k.mode == 3)
  *p++ = ctx->s2k.iter;

 if (ctx->use_sess_key)
 {
  res = symencrypt_sesskey(ctx, p);
  if (res < 0)
   return res;
  p += res;
 }

 pktlen = p - pkt;
 res = write_normal_header(dst, PGP_PKT_SYMENCRYPTED_SESSKEY, pktlen);
 if (res >= 0)
  res = pushf_write(dst, pkt, pktlen);

 px_memset(pkt, 0, pktlen);
 return res;
}
