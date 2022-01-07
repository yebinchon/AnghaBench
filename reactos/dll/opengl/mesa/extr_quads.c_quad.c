
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* TriangleFunc ) (TYPE_2__*,int ,int ,int ,int ) ;} ;
struct TYPE_7__ {TYPE_1__ Driver; } ;
typedef int GLuint ;
typedef TYPE_2__ GLcontext ;


 int stub1 (TYPE_2__*,int ,int ,int ,int ) ;
 int stub2 (TYPE_2__*,int ,int ,int ,int ) ;

__attribute__((used)) static void quad( GLcontext *ctx,
                  GLuint v0, GLuint v1, GLuint v2, GLuint v3, GLuint pv )
{
   (*ctx->Driver.TriangleFunc)( ctx, v0, v1, v3, pv );
   (*ctx->Driver.TriangleFunc)( ctx, v1, v2, v3, pv );
}
