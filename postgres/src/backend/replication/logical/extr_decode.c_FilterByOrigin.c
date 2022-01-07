
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * filter_by_origin_cb; } ;
struct TYPE_6__ {TYPE_1__ callbacks; } ;
typedef int RepOriginId ;
typedef TYPE_2__ LogicalDecodingContext ;


 int filter_by_origin_cb_wrapper (TYPE_2__*,int ) ;

__attribute__((used)) static inline bool
FilterByOrigin(LogicalDecodingContext *ctx, RepOriginId origin_id)
{
 if (ctx->callbacks.filter_by_origin_cb == ((void*)0))
  return 0;

 return filter_by_origin_cb_wrapper(ctx, origin_id);
}
