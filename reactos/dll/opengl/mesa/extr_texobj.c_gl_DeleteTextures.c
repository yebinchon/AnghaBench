
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct gl_texture_object {scalar_t__ RefCount; } ;
struct TYPE_12__ {struct gl_texture_object* Default2D; struct gl_texture_object* Default1D; int TexObjects; } ;
struct TYPE_10__ {int (* DeleteTexture ) (TYPE_3__*,struct gl_texture_object*) ;} ;
struct TYPE_9__ {struct gl_texture_object* Current2D; struct gl_texture_object* Current1D; } ;
struct TYPE_11__ {TYPE_5__* Shared; TYPE_2__ Driver; TYPE_1__ Texture; } ;
typedef size_t GLuint ;
typedef size_t GLsizei ;
typedef TYPE_3__ GLcontext ;


 int GL_INVALID_OPERATION ;
 scalar_t__ HashLookup (int ,size_t const) ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_3__*) ;
 int assert (int) ;
 int gl_error (TYPE_3__*,int ,char*) ;
 int gl_free_texture_object (TYPE_5__*,struct gl_texture_object*) ;
 int stub1 (TYPE_3__*,struct gl_texture_object*) ;

void gl_DeleteTextures( GLcontext *ctx, GLsizei n, const GLuint *texName)
{
   GLuint i;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glAreTexturesResident" );
      return;
   }

   for (i=0;i<n;i++) {
      struct gl_texture_object *t;
      if (texName[i]>0) {
         t = (struct gl_texture_object *)
            HashLookup(ctx->Shared->TexObjects, texName[i]);
         if (t) {
            if (ctx->Texture.Current1D==t) {

               ctx->Texture.Current1D = ctx->Shared->Default1D;
               t->RefCount--;
               assert( t->RefCount >= 0 );
            }
            else if (ctx->Texture.Current2D==t) {

               ctx->Texture.Current2D = ctx->Shared->Default2D;
               t->RefCount--;
               assert( t->RefCount >= 0 );
            }


            if (ctx->Driver.DeleteTexture) {
               (*ctx->Driver.DeleteTexture)( ctx, t );
            }

            if (t->RefCount==0) {
               gl_free_texture_object(ctx->Shared, t);
            }
         }
      }
   }
}
