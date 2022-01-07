
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint32 ;
struct TYPE_4__ {scalar_t__ unicode_mode; scalar_t__ text_mode; } ;
typedef int PushFilter ;
typedef TYPE_1__ PGP_Context ;


 int PGP_PKT_LITERAL_DATA ;
 int pkt_stream_filter ;
 int pushf_create (int **,int *,TYPE_1__*,int *) ;
 int pushf_free (int *) ;
 int pushf_write (int *,int*,int) ;
 scalar_t__ time (int *) ;
 int write_tag_only (int *,int ) ;

__attribute__((used)) static int
init_litdata_packet(PushFilter **pf_res, PGP_Context *ctx, PushFilter *dst)
{
 int res;
 int hdrlen;
 uint8 hdr[6];
 uint32 t;
 PushFilter *pkt;
 int type;





 if (ctx->text_mode)
  type = ctx->unicode_mode ? 'u' : 't';
 else
  type = 'b';





 t = (uint32) time(((void*)0));

 hdr[0] = type;
 hdr[1] = 0;
 hdr[2] = (t >> 24) & 255;
 hdr[3] = (t >> 16) & 255;
 hdr[4] = (t >> 8) & 255;
 hdr[5] = t & 255;
 hdrlen = 6;

 res = write_tag_only(dst, PGP_PKT_LITERAL_DATA);
 if (res < 0)
  return res;

 res = pushf_create(&pkt, &pkt_stream_filter, ctx, dst);
 if (res < 0)
  return res;

 res = pushf_write(pkt, hdr, hdrlen);
 if (res < 0)
 {
  pushf_free(pkt);
  return res;
 }

 *pf_res = pkt;
 return 0;
}
