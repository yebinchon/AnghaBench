
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * Normal; } ;
struct TYPE_7__ {TYPE_1__* VB; TYPE_2__ Current; } ;
struct TYPE_5__ {int MonoNormal; } ;
typedef int GLfloat ;
typedef TYPE_3__ GLcontext ;


 int GL_FALSE ;

void gl_Normal3fv( GLcontext *ctx, const GLfloat *n )
{
   ctx->Current.Normal[0] = n[0];
   ctx->Current.Normal[1] = n[1];
   ctx->Current.Normal[2] = n[2];
   ctx->VB->MonoNormal = GL_FALSE;
}
