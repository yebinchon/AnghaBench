
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int context; } ;
typedef TYPE_1__ TestDecodingData ;
struct TYPE_5__ {TYPE_1__* output_plugin_private; } ;
typedef TYPE_2__ LogicalDecodingContext ;


 int MemoryContextDelete (int ) ;

__attribute__((used)) static void
pg_decode_shutdown(LogicalDecodingContext *ctx)
{
 TestDecodingData *data = ctx->output_plugin_private;


 MemoryContextDelete(data->context);
}
