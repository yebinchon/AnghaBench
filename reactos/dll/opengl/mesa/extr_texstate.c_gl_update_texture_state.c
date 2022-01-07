
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gl_texture_object {void* Dirty; struct gl_texture_object* Next; } ;
struct TYPE_6__ {int Enabled; void* AnyDirty; int * Current; int * Current1D; int * Current2D; } ;
struct TYPE_7__ {TYPE_2__ Texture; TYPE_1__* Shared; } ;
struct TYPE_5__ {struct gl_texture_object* TexObjectList; } ;
typedef TYPE_3__ GLcontext ;


 void* GL_FALSE ;
 int TEXTURE_1D ;
 int TEXTURE_2D ;
 int gl_set_texture_sampler (struct gl_texture_object*) ;
 int gl_test_texture_object_completeness (struct gl_texture_object*) ;

void gl_update_texture_state( GLcontext *ctx )
{
   struct gl_texture_object *t;

   if (ctx->Texture.Enabled & TEXTURE_2D)
      ctx->Texture.Current = ctx->Texture.Current2D;
   else if (ctx->Texture.Enabled & TEXTURE_1D)
      ctx->Texture.Current = ctx->Texture.Current1D;
   else
      ctx->Texture.Current = ((void*)0);

   if (ctx->Texture.AnyDirty) {
      for (t = ctx->Shared->TexObjectList; t; t = t->Next) {
         if (t->Dirty) {
            gl_test_texture_object_completeness(t);
            gl_set_texture_sampler(t);
            t->Dirty = GL_FALSE;
         }
      }
      ctx->Texture.AnyDirty = GL_FALSE;
   }
}
