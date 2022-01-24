#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_14__ ;

/* Type definitions */
struct TYPE_20__ {void* ReadBuffer; } ;
struct TYPE_19__ {void* DrawBuffer; } ;
struct TYPE_22__ {int /*<<< orphan*/  Exec; int /*<<< orphan*/  API; struct TYPE_22__* PB; struct TYPE_22__* VB; TYPE_14__* Shared; TYPE_2__ Pixel; TYPE_1__ Color; int /*<<< orphan*/ * Buffer; TYPE_3__* Visual; void* DriverCtx; } ;
struct TYPE_21__ {scalar_t__ DBflag; } ;
struct TYPE_18__ {int /*<<< orphan*/  RefCount; } ;
typedef  TYPE_3__ GLvisual ;
typedef  int /*<<< orphan*/  GLushort ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLubyte ;
typedef  int /*<<< orphan*/  GLshort ;
typedef  int /*<<< orphan*/  GLint ;
typedef  TYPE_4__ GLcontext ;
typedef  int /*<<< orphan*/  GLbyte ;

/* Variables and functions */
 void* GL_BACK ; 
 void* GL_FRONT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_14__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_14__*) ; 
 TYPE_4__* FUNC6 () ; 
 TYPE_4__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 

GLcontext *FUNC14( GLvisual *visual,
                              GLcontext *share_list,
                              void *driver_ctx )
{
   GLcontext *ctx;

   /* do some implementation tests */
   FUNC2( sizeof(GLbyte) == 1 );
   FUNC2( sizeof(GLshort) >= 2 );
   FUNC2( sizeof(GLint) >= 4 );
   FUNC2( sizeof(GLubyte) == 1 );
   FUNC2( sizeof(GLushort) >= 2 );
   FUNC2( sizeof(GLuint) >= 4 );

   /* misc one-time initializations */
   FUNC11();
   FUNC10();
   FUNC9();

   ctx = (GLcontext *) FUNC3( 1, sizeof(GLcontext) );
   if (!ctx) {
      return NULL;
   }

   ctx->DriverCtx = driver_ctx;
   ctx->Visual = visual;
   ctx->Buffer = NULL;

   ctx->VB = FUNC7();
   if (!ctx->VB) {
      FUNC4( ctx );
      return NULL;
   }

   ctx->PB = FUNC6();
   if (!ctx->PB) {
      FUNC4( ctx->VB );
      FUNC4( ctx );
      return NULL;
   }

   if (share_list) {
      /* share the group of display lists of another context */
      ctx->Shared = share_list->Shared;
   }
   else {
      /* allocate new group of display lists */
      ctx->Shared = FUNC1();
      if (!ctx->Shared) {
         FUNC4(ctx->VB);
         FUNC4(ctx->PB);
         FUNC4(ctx);
         return NULL;
      }
   }
   ctx->Shared->RefCount++;

   FUNC13( ctx );

   if (visual->DBflag) {
      ctx->Color.DrawBuffer = GL_BACK;
      ctx->Pixel.ReadBuffer = GL_BACK;
   }
   else {
      ctx->Color.DrawBuffer = GL_FRONT;
      ctx->Pixel.ReadBuffer = GL_FRONT;
   }

#ifdef PROFILE
   init_timings( ctx );
#endif

#ifdef GL_VERSION_1_1
   if (!alloc_proxy_textures(ctx)) {
      free_shared_state(ctx, ctx->Shared);
      free(ctx->VB);
      free(ctx->PB);
      free(ctx);
      return NULL;
   }
#endif

   FUNC8( ctx );
   ctx->API = ctx->Exec;   /* GL_EXECUTE is default */

   return ctx;
}