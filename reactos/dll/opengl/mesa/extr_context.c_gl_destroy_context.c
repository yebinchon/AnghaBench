
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ RefCount; } ;
struct TYPE_8__ {int Proxy2D; int Proxy1D; } ;
struct TYPE_9__ {void* PB; void* VB; TYPE_1__ Texture; TYPE_6__* Shared; } ;
typedef TYPE_2__ GLcontext ;


 TYPE_2__* CC ;
 int assert (int) ;
 int free (void*) ;
 int free_shared_state (TYPE_2__*,TYPE_6__*) ;
 scalar_t__ getenv (char*) ;
 int gl_free_texture_object (int *,int ) ;
 int print_timings (TYPE_2__*) ;

void gl_destroy_context( GLcontext *ctx )
{
   if (ctx) {







      free( ctx->PB );
      free( ctx->VB );

      ctx->Shared->RefCount--;
      assert(ctx->Shared->RefCount>=0);
      if (ctx->Shared->RefCount==0) {

  free_shared_state( ctx, ctx->Shared );
      }


      gl_free_texture_object( ((void*)0), ctx->Texture.Proxy1D );
      gl_free_texture_object( ((void*)0), ctx->Texture.Proxy2D );

      free( (void *) ctx );


      if (ctx==CC) {
         CC = ((void*)0);
      }


   }
}
