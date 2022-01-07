
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_8__ {int disable_mdc; scalar_t__ unexpected_binary; scalar_t__ unsupported_compr; scalar_t__ corrupt_prefix; } ;
typedef int PullFilter ;
typedef TYPE_1__ PGP_Context ;
typedef int MBuf ;


 int NO_CTX_SIZE ;





 int PXE_PGP_CORRUPT_DATA ;
 int PXE_PGP_NOT_TEXT ;
 int PXE_PGP_UNSUPPORTED_COMPR ;
 int parse_symenc_data (TYPE_1__*,int *,int *) ;
 int parse_symenc_mdc_data (TYPE_1__*,int *,int *) ;
 int parse_symenc_sesskey (TYPE_1__*,int *) ;
 int pgp_create_pkt_reader (int **,int *,int,int,TYPE_1__*) ;
 int pgp_parse_pkt_hdr (int *,int*,int*,int ) ;
 int pgp_parse_pubenc_sesskey (TYPE_1__*,int *) ;
 int pgp_skip_packet (int *) ;
 int pullf_create_mbuf_reader (int **,int *) ;
 int pullf_free (int *) ;
 int px_debug (char*,...) ;

int
pgp_decrypt(PGP_Context *ctx, MBuf *msrc, MBuf *mdst)
{
 int res;
 PullFilter *src = ((void*)0);
 PullFilter *pkt = ((void*)0);
 uint8 tag;
 int len;
 int got_key = 0;
 int got_data = 0;

 res = pullf_create_mbuf_reader(&src, msrc);

 while (res >= 0)
 {
  res = pgp_parse_pkt_hdr(src, &tag, &len, NO_CTX_SIZE);
  if (res <= 0)
   break;

  res = pgp_create_pkt_reader(&pkt, src, len, res, ctx);
  if (res < 0)
   break;

  res = PXE_PGP_CORRUPT_DATA;
  switch (tag)
  {
   case 132:
    res = pgp_skip_packet(pkt);
    break;
   case 131:

    res = pgp_parse_pubenc_sesskey(ctx, pkt);
    got_key = 1;
    break;
   case 128:
    if (got_key)






     px_debug("pgp_decrypt: using first of several keys");
    else
    {
     got_key = 1;
     res = parse_symenc_sesskey(ctx, pkt);
    }
    break;
   case 130:
    if (!got_key)
     px_debug("pgp_decrypt: have data but no key");
    else if (got_data)
     px_debug("pgp_decrypt: got second data packet");
    else
    {
     got_data = 1;
     ctx->disable_mdc = 1;
     res = parse_symenc_data(ctx, pkt, mdst);
    }
    break;
   case 129:
    if (!got_key)
     px_debug("pgp_decrypt: have data but no key");
    else if (got_data)
     px_debug("pgp_decrypt: several data pkts not supported");
    else
    {
     got_data = 1;
     ctx->disable_mdc = 0;
     res = parse_symenc_mdc_data(ctx, pkt, mdst);
    }
    break;
   default:
    px_debug("pgp_decrypt: unknown tag: 0x%02x", tag);
  }
  pullf_free(pkt);
  pkt = ((void*)0);
 }

 if (pkt)
  pullf_free(pkt);

 if (src)
  pullf_free(src);

 if (res < 0)
  return res;






 if (!got_data || ctx->corrupt_prefix)
  return PXE_PGP_CORRUPT_DATA;
 if (ctx->unsupported_compr)
  return PXE_PGP_UNSUPPORTED_COMPR;
 if (ctx->unexpected_binary)
  return PXE_PGP_NOT_TEXT;

 return res;
}
