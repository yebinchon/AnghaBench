
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* VB; } ;
struct TYPE_5__ {int** Win; } ;
typedef size_t GLuint ;
typedef TYPE_2__ GLcontext ;


 int DEPTH_SCALE ;
 int gl_update_hitflag (TYPE_2__*,int) ;

__attribute__((used)) static void select_line( GLcontext *ctx, GLuint v1, GLuint v2, GLuint pv )
{
   gl_update_hitflag( ctx, ctx->VB->Win[v1][2] / DEPTH_SCALE );
   gl_update_hitflag( ctx, ctx->VB->Win[v2][2] / DEPTH_SCALE );
}
