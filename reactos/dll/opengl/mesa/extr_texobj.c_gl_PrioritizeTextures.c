
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct gl_texture_object {int Priority; } ;
struct TYPE_7__ {TYPE_1__* Shared; } ;
struct TYPE_6__ {int TexObjects; } ;
typedef scalar_t__ GLuint ;
typedef scalar_t__ GLsizei ;
typedef TYPE_2__ GLcontext ;
typedef int GLclampf ;


 int CLAMP (int const,float,float) ;
 int GL_INVALID_OPERATION ;
 int GL_INVALID_VALUE ;
 scalar_t__ HashLookup (int ,scalar_t__ const) ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_PrioritizeTextures( GLcontext *ctx,
                            GLsizei n, const GLuint *texName,
                            const GLclampf *priorities )
{
   GLuint i;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glAreTexturesResident" );
      return;
   }
   if (n<0) {
      gl_error( ctx, GL_INVALID_VALUE, "glAreTexturesResident(n)" );
      return;
   }

   for (i=0;i<n;i++) {
      struct gl_texture_object *t;
      if (texName[i]>0) {
         t = (struct gl_texture_object *)
            HashLookup(ctx->Shared->TexObjects, texName[i]);
         if (t) {
            t->Priority = CLAMP( priorities[i], 0.0F, 1.0F );
         }
      }
   }
}
