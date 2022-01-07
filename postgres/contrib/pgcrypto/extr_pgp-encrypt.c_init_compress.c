
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_5__ {int compress_algo; } ;
typedef int PushFilter ;
typedef TYPE_1__ PGP_Context ;


 int PGP_PKT_COMPRESSED_DATA ;
 int pgp_compress_filter (int **,TYPE_1__*,int *) ;
 int pkt_stream_filter ;
 int pushf_create (int **,int *,TYPE_1__*,int *) ;
 int pushf_free (int *) ;
 int pushf_write (int *,int *,int) ;
 int write_tag_only (int *,int ) ;

__attribute__((used)) static int
init_compress(PushFilter **pf_res, PGP_Context *ctx, PushFilter *dst)
{
 int res;
 uint8 type = ctx->compress_algo;
 PushFilter *pkt;

 res = write_tag_only(dst, PGP_PKT_COMPRESSED_DATA);
 if (res < 0)
  return res;

 res = pushf_create(&pkt, &pkt_stream_filter, ctx, dst);
 if (res < 0)
  return res;

 res = pushf_write(pkt, &type, 1);
 if (res >= 0)
  res = pgp_compress_filter(pf_res, ctx, pkt);

 if (res < 0)
  pushf_free(pkt);

 return res;
}
