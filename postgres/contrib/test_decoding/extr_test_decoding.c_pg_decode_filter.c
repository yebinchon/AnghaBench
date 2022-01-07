
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ only_local; } ;
typedef TYPE_1__ TestDecodingData ;
struct TYPE_5__ {TYPE_1__* output_plugin_private; } ;
typedef scalar_t__ RepOriginId ;
typedef TYPE_2__ LogicalDecodingContext ;


 scalar_t__ InvalidRepOriginId ;

__attribute__((used)) static bool
pg_decode_filter(LogicalDecodingContext *ctx,
     RepOriginId origin_id)
{
 TestDecodingData *data = ctx->output_plugin_private;

 if (data->only_local && origin_id != InvalidRepOriginId)
  return 1;
 return 0;
}
