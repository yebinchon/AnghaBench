
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_12__ {scalar_t__ disable_mdc; scalar_t__ compress_algo; scalar_t__ compress_level; scalar_t__ convert_crlf; scalar_t__ text_mode; scalar_t__ pub_key; scalar_t__ sym_key; } ;
typedef int PushFilter ;
typedef TYPE_1__ PGP_Context ;
typedef int MBuf ;


 int PXE_ARGUMENT_ERROR ;
 int crlf_filter ;
 int encrypt_filter ;
 int init_compress (int **,TYPE_1__*,int *) ;
 int init_encdata_packet (int **,TYPE_1__*,int *) ;
 int init_litdata_packet (int **,TYPE_1__*,int *) ;
 int init_s2k_key (TYPE_1__*) ;
 int init_sess_key (TYPE_1__*) ;
 int mbuf_avail (int *) ;
 int mbuf_grab (int *,int ,int **) ;
 int mdc_filter ;
 int pgp_write_pubenc_sesskey (TYPE_1__*,int *) ;
 int pushf_create (int **,int *,TYPE_1__*,int *) ;
 int pushf_create_mbuf_writer (int **,int *) ;
 int pushf_flush (int *) ;
 int pushf_free_all (int *) ;
 int pushf_write (int *,int *,int) ;
 int write_prefix (TYPE_1__*,int *) ;
 int write_symenc_sesskey (TYPE_1__*,int *) ;

int
pgp_encrypt(PGP_Context *ctx, MBuf *src, MBuf *dst)
{
 int res;
 int len;
 uint8 *buf;
 PushFilter *pf,
      *pf_tmp;




 if (!ctx->sym_key && !ctx->pub_key)
  return PXE_ARGUMENT_ERROR;


 res = pushf_create_mbuf_writer(&pf, dst);
 if (res < 0)
  goto out;




 if (ctx->sym_key)
 {
  res = init_s2k_key(ctx);
  if (res < 0)
   goto out;
 }

 res = init_sess_key(ctx);
 if (res < 0)
  goto out;




 if (ctx->pub_key)
  res = pgp_write_pubenc_sesskey(ctx, pf);
 else
  res = write_symenc_sesskey(ctx, pf);
 if (res < 0)
  goto out;


 res = init_encdata_packet(&pf_tmp, ctx, pf);
 if (res < 0)
  goto out;
 pf = pf_tmp;


 res = pushf_create(&pf_tmp, &encrypt_filter, ctx, pf);
 if (res < 0)
  goto out;
 pf = pf_tmp;


 if (ctx->disable_mdc == 0)
 {
  res = pushf_create(&pf_tmp, &mdc_filter, ctx, pf);
  if (res < 0)
   goto out;
  pf = pf_tmp;
 }


 res = write_prefix(ctx, pf);
 if (res < 0)
  goto out;


 if (ctx->compress_algo > 0 && ctx->compress_level > 0)
 {
  res = init_compress(&pf_tmp, ctx, pf);
  if (res < 0)
   goto out;
  pf = pf_tmp;
 }


 res = init_litdata_packet(&pf_tmp, ctx, pf);
 if (res < 0)
  goto out;
 pf = pf_tmp;



 if (ctx->text_mode && ctx->convert_crlf)
 {
  res = pushf_create(&pf_tmp, &crlf_filter, ctx, pf);
  if (res < 0)
   goto out;
  pf = pf_tmp;
 }





 len = mbuf_grab(src, mbuf_avail(src), &buf);
 res = pushf_write(pf, buf, len);
 if (res >= 0)
  res = pushf_flush(pf);
out:
 pushf_free_all(pf);
 return res;
}
