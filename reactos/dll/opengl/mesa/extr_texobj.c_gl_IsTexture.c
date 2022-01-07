
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* Shared; } ;
struct TYPE_6__ {int TexObjects; } ;
typedef scalar_t__ GLuint ;
typedef TYPE_2__ GLcontext ;
typedef int GLboolean ;


 int GL_FALSE ;
 int GL_INVALID_OPERATION ;
 int GL_TRUE ;
 scalar_t__ HashLookup (int ,scalar_t__) ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;

GLboolean gl_IsTexture( GLcontext *ctx, GLuint texture )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glIsTextures" );
      return GL_FALSE;
   }
   if (texture>0 && HashLookup(ctx->Shared->TexObjects, texture)) {
      return GL_TRUE;
   }
   else {
      return GL_FALSE;
   }
}
