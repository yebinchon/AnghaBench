
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_5__ {int compress_algo; int unsupported_compr; } ;
typedef int PullFilter ;
typedef TYPE_1__ PGP_Context ;
typedef int MBuf ;


 int GETBYTE (int *,int) ;
 int NO_COMPR ;
 int NO_MDC ;




 int PXE_PGP_CORRUPT_DATA ;
 int pgp_decompress_filter (int **,TYPE_1__*,int *) ;
 int process_data_packets (TYPE_1__*,int *,int *,int ,int ) ;
 int pullf_free (int *) ;
 int pullf_read (int *,int,int**) ;
 int px_debug (char*) ;

__attribute__((used)) static int
parse_compressed_data(PGP_Context *ctx, MBuf *dst, PullFilter *pkt)
{
 int res;
 uint8 type;
 PullFilter *pf_decompr;
 uint8 *discard_buf;

 GETBYTE(pkt, type);

 ctx->compress_algo = type;
 switch (type)
 {
  case 130:
   res = process_data_packets(ctx, dst, pkt, NO_COMPR, NO_MDC);
   break;

  case 129:
  case 128:
   res = pgp_decompress_filter(&pf_decompr, ctx, pkt);
   if (res >= 0)
   {
    res = process_data_packets(ctx, dst, pf_decompr,
             NO_COMPR, NO_MDC);
    pullf_free(pf_decompr);
   }
   break;

  case 131:
   px_debug("parse_compressed_data: bzip2 unsupported");

   ctx->unsupported_compr = 1;





   while (1)
   {
    res = pullf_read(pkt, 32 * 1024, &discard_buf);
    if (res <= 0)
     break;
   }

   break;

  default:
   px_debug("parse_compressed_data: unknown compr type");
   res = PXE_PGP_CORRUPT_DATA;
 }

 return res;
}
