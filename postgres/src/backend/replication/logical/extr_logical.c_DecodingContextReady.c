
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int snapshot_builder; } ;
typedef TYPE_1__ LogicalDecodingContext ;


 scalar_t__ SNAPBUILD_CONSISTENT ;
 scalar_t__ SnapBuildCurrentState (int ) ;

bool
DecodingContextReady(LogicalDecodingContext *ctx)
{
 return SnapBuildCurrentState(ctx->snapshot_builder) == SNAPBUILD_CONSISTENT;
}
