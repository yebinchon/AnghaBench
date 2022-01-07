
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;


struct TYPE_20__ {void* ReadBuffer; } ;
struct TYPE_19__ {void* DrawBuffer; } ;
struct TYPE_22__ {int Exec; int API; struct TYPE_22__* PB; struct TYPE_22__* VB; TYPE_14__* Shared; TYPE_2__ Pixel; TYPE_1__ Color; int * Buffer; TYPE_3__* Visual; void* DriverCtx; } ;
struct TYPE_21__ {scalar_t__ DBflag; } ;
struct TYPE_18__ {int RefCount; } ;
typedef TYPE_3__ GLvisual ;
typedef int GLushort ;
typedef int GLuint ;
typedef int GLubyte ;
typedef int GLshort ;
typedef int GLint ;
typedef TYPE_4__ GLcontext ;
typedef int GLbyte ;


 void* GL_BACK ;
 void* GL_FRONT ;
 int alloc_proxy_textures (TYPE_4__*) ;
 TYPE_14__* alloc_shared_state () ;
 int assert (int) ;
 scalar_t__ calloc (int,int) ;
 int free (TYPE_4__*) ;
 int free_shared_state (TYPE_4__*,TYPE_14__*) ;
 TYPE_4__* gl_alloc_pb () ;
 TYPE_4__* gl_alloc_vb () ;
 int gl_init_api_function_pointers (TYPE_4__*) ;
 int gl_init_eval () ;
 int gl_init_lists () ;
 int gl_init_math () ;
 int init_timings (TYPE_4__*) ;
 int initialize_context (TYPE_4__*) ;

GLcontext *gl_create_context( GLvisual *visual,
                              GLcontext *share_list,
                              void *driver_ctx )
{
   GLcontext *ctx;


   assert( sizeof(GLbyte) == 1 );
   assert( sizeof(GLshort) >= 2 );
   assert( sizeof(GLint) >= 4 );
   assert( sizeof(GLubyte) == 1 );
   assert( sizeof(GLushort) >= 2 );
   assert( sizeof(GLuint) >= 4 );


   gl_init_math();
   gl_init_lists();
   gl_init_eval();

   ctx = (GLcontext *) calloc( 1, sizeof(GLcontext) );
   if (!ctx) {
      return ((void*)0);
   }

   ctx->DriverCtx = driver_ctx;
   ctx->Visual = visual;
   ctx->Buffer = ((void*)0);

   ctx->VB = gl_alloc_vb();
   if (!ctx->VB) {
      free( ctx );
      return ((void*)0);
   }

   ctx->PB = gl_alloc_pb();
   if (!ctx->PB) {
      free( ctx->VB );
      free( ctx );
      return ((void*)0);
   }

   if (share_list) {

      ctx->Shared = share_list->Shared;
   }
   else {

      ctx->Shared = alloc_shared_state();
      if (!ctx->Shared) {
         free(ctx->VB);
         free(ctx->PB);
         free(ctx);
         return ((void*)0);
      }
   }
   ctx->Shared->RefCount++;

   initialize_context( ctx );

   if (visual->DBflag) {
      ctx->Color.DrawBuffer = GL_BACK;
      ctx->Pixel.ReadBuffer = GL_BACK;
   }
   else {
      ctx->Color.DrawBuffer = GL_FRONT;
      ctx->Pixel.ReadBuffer = GL_FRONT;
   }
   gl_init_api_function_pointers( ctx );
   ctx->API = ctx->Exec;

   return ctx;
}
