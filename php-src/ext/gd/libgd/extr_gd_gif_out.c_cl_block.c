
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int count_int ;
typedef int code_int ;
struct TYPE_5__ {int clear_flg; scalar_t__ ClearCode; scalar_t__ free_ent; } ;
typedef TYPE_1__ GifCtx ;


 int cl_hash (int ,TYPE_1__*) ;
 scalar_t__ hsize ;
 int output (int ,TYPE_1__*) ;

__attribute__((used)) static void
cl_block (GifCtx *ctx)
{

        cl_hash ( (count_int) hsize, ctx );
        ctx->free_ent = ctx->ClearCode + 2;
        ctx->clear_flg = 1;

        output( (code_int)ctx->ClearCode, ctx);
}
