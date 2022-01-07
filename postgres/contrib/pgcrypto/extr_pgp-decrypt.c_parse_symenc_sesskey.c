
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8 ;
typedef int tmpbuf ;
struct TYPE_7__ {int key_len; int key; int digest_algo; int iter; int mode; } ;
struct TYPE_6__ {int s2k_cipher_algo; int cipher_algo; int use_sess_key; TYPE_2__ s2k; int sess_key_len; int sess_key; int sym_key_len; int sym_key; int s2k_digest_algo; int s2k_count; int s2k_mode; } ;
typedef int PullFilter ;
typedef TYPE_1__ PGP_Context ;


 int GETBYTE (int *,int) ;
 int PGP_MAX_KEY ;
 int PXE_PGP_CORRUPT_DATA ;
 int decrypt_key (TYPE_1__*,int*,int) ;
 int memcpy (int ,int ,int ) ;
 int pgp_s2k_process (TYPE_2__*,int,int ,int ) ;
 int pgp_s2k_read (int *,TYPE_2__*) ;
 int pullf_read_max (int *,int,int**,int*) ;
 int px_debug (char*) ;
 int px_memset (int*,int ,int) ;
 int s2k_decode_count (int ) ;

__attribute__((used)) static int
parse_symenc_sesskey(PGP_Context *ctx, PullFilter *src)
{
 uint8 *p;
 int res;
 uint8 tmpbuf[PGP_MAX_KEY + 2];
 uint8 ver;

 GETBYTE(src, ver);
 GETBYTE(src, ctx->s2k_cipher_algo);
 if (ver != 4)
 {
  px_debug("bad key pkt ver");
  return PXE_PGP_CORRUPT_DATA;
 }




 res = pgp_s2k_read(src, &ctx->s2k);
 if (res < 0)
  return res;
 ctx->s2k_mode = ctx->s2k.mode;
 ctx->s2k_count = s2k_decode_count(ctx->s2k.iter);
 ctx->s2k_digest_algo = ctx->s2k.digest_algo;




 res = pgp_s2k_process(&ctx->s2k, ctx->s2k_cipher_algo,
        ctx->sym_key, ctx->sym_key_len);
 if (res < 0)
  return res;




 res = pullf_read_max(src, PGP_MAX_KEY + 2, &p, tmpbuf);
 if (res < 0)
  return res;

 if (res == 0)
 {



  memcpy(ctx->sess_key, ctx->s2k.key, ctx->s2k.key_len);
  ctx->sess_key_len = ctx->s2k.key_len;
  ctx->cipher_algo = ctx->s2k_cipher_algo;
  res = 0;
  ctx->use_sess_key = 0;
 }
 else
 {



  if (res < 17 || res > PGP_MAX_KEY + 1)
  {
   px_debug("expect key, but bad data");
   return PXE_PGP_CORRUPT_DATA;
  }
  ctx->use_sess_key = 1;
  res = decrypt_key(ctx, p, res);
 }

 px_memset(tmpbuf, 0, sizeof(tmpbuf));
 return res;
}
