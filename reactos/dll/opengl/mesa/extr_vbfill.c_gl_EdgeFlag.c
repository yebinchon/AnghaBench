
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int EdgeFlag; } ;
struct TYPE_5__ {TYPE_1__ Current; } ;
typedef TYPE_2__ GLcontext ;
typedef int GLboolean ;



void gl_EdgeFlag( GLcontext *ctx, GLboolean flag )
{
   ctx->Current.EdgeFlag = flag;
}
