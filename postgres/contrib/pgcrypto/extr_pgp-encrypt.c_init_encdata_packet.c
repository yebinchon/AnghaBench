
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ disable_mdc; } ;
typedef int PushFilter ;
typedef TYPE_1__ PGP_Context ;


 int PGP_PKT_SYMENCRYPTED_DATA ;
 int PGP_PKT_SYMENCRYPTED_DATA_MDC ;
 int pkt_stream_filter ;
 int pushf_create (int **,int *,TYPE_1__*,int *) ;
 int write_tag_only (int *,int) ;

__attribute__((used)) static int
init_encdata_packet(PushFilter **pf_res, PGP_Context *ctx, PushFilter *dst)
{
 int res;
 int tag;

 if (ctx->disable_mdc)
  tag = PGP_PKT_SYMENCRYPTED_DATA;
 else
  tag = PGP_PKT_SYMENCRYPTED_DATA_MDC;

 res = write_tag_only(dst, tag);
 if (res < 0)
  return res;

 return pushf_create(pf_res, &pkt_stream_filter, ctx, dst);
}
