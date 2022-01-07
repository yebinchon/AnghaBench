
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void** Normal; } ;
struct TYPE_7__ {TYPE_2__* VB; TYPE_1__ Current; } ;
struct TYPE_6__ {int MonoNormal; } ;
typedef void* GLfloat ;
typedef TYPE_3__ GLcontext ;


 int GL_FALSE ;

void gl_Normal3f( GLcontext *ctx, GLfloat nx, GLfloat ny, GLfloat nz )
{
   ctx->Current.Normal[0] = nx;
   ctx->Current.Normal[1] = ny;
   ctx->Current.Normal[2] = nz;
   ctx->VB->MonoNormal = GL_FALSE;
}
