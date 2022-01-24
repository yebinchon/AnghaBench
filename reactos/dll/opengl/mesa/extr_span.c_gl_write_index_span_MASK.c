#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_31__ {scalar_t__ (* DepthTestSpan ) (TYPE_9__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* SetBuffer ) (TYPE_9__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* WriteIndexSpan ) (TYPE_9__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ;} ;
struct TYPE_30__ {scalar_t__ SWmasking; scalar_t__ SWLogicOpEnabled; } ;
struct TYPE_29__ {scalar_t__ Test; } ;
struct TYPE_28__ {scalar_t__ Enabled; } ;
struct TYPE_27__ {scalar_t__ StippleFlag; } ;
struct TYPE_26__ {scalar_t__ Enabled; } ;
struct TYPE_25__ {scalar_t__ Fog; } ;
struct TYPE_24__ {scalar_t__ Enabled; } ;
struct TYPE_32__ {int RasterMask; TYPE_8__ Driver; TYPE_7__ Color; TYPE_6__ Depth; TYPE_5__ Stencil; TYPE_4__ Polygon; TYPE_3__ Scissor; TYPE_2__ Hint; TYPE_1__ Fog; } ;
typedef  int GLuint ;
typedef  int /*<<< orphan*/  GLubyte ;
typedef  int /*<<< orphan*/  GLint ;
typedef  scalar_t__ GLenum ;
typedef  int /*<<< orphan*/  GLdepth ;
typedef  TYPE_9__ GLcontext ;

/* Variables and functions */
 int FRONT_AND_BACK_BIT ; 
 int /*<<< orphan*/  GL_BACK ; 
 scalar_t__ GL_BITMAP ; 
 int /*<<< orphan*/  GL_FRONT ; 
 scalar_t__ GL_NICEST ; 
 scalar_t__ GL_POLYGON ; 
 int MAX_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int NO_DRAW_BIT ; 
 int WINCLIP_BIT ; 
 scalar_t__ FUNC2 (TYPE_9__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (TYPE_9__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_9__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_9__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_9__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_9__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_9__*,int /*<<< orphan*/ ) ; 

void FUNC15( GLcontext *ctx,
                          GLuint n, GLint x, GLint y, GLdepth z[],
			  GLuint index[], GLenum primitive )
{
   GLubyte mask[MAX_WIDTH];
   GLuint index_save[MAX_WIDTH];

   /* init mask to 1's (all pixels are to be written) */
   FUNC1(mask, 1, n);

   if ((ctx->RasterMask & WINCLIP_BIT) || primitive==GL_BITMAP) {
      if (FUNC2(ctx,n,x,y,mask)==0) {
	 return;
      }
   }

   /* Per-pixel fog */
   if (ctx->Fog.Enabled
       && (ctx->Hint.Fog==GL_NICEST || primitive==GL_BITMAP)) {
      FUNC4( ctx, n, z, index );
   }

   /* Do the scissor test */
   if (ctx->Scissor.Enabled) {
      if (FUNC7( ctx, n, x, y, mask )==0) {
	 return;
      }
   }

   /* Polygon Stippling */
   if (ctx->Polygon.StippleFlag && primitive==GL_POLYGON) {
      FUNC9( ctx, n, x, y, mask );
   }

   if (ctx->Stencil.Enabled) {
      /* first stencil test */
      if (FUNC8( ctx, n, x, y, mask )==0) {
	 return;
      }
      /* depth buffering w/ stencil */
      FUNC3( ctx, n, x, y, z, mask );
   }
   else if (ctx->Depth.Test) {
      /* regular depth testing */
      if ((*ctx->Driver.DepthTestSpan)( ctx, n, x, y, z, mask )==0)  return;
   }

   if (ctx->RasterMask & NO_DRAW_BIT) {
      /* write no pixels */
      return;
   }

   if (ctx->RasterMask & FRONT_AND_BACK_BIT) {
      /* Save a copy of the indexes since LogicOp and IndexMask
       * may change them
       */
      FUNC0( index_save, index, n * sizeof(GLuint) );
   }

   if (ctx->Color.SWLogicOpEnabled) {
      FUNC5( ctx, n, x, y, index, mask );
   }
   if (ctx->Color.SWmasking) {
      FUNC6( ctx, n, x, y, index );
   }

   /* write pixels */
   (*ctx->Driver.WriteIndexSpan)( ctx, n, x, y, index, mask );


   if (ctx->RasterMask & FRONT_AND_BACK_BIT) {
      /*** Also draw to back buffer ***/
      (*ctx->Driver.SetBuffer)( ctx, GL_BACK );
      FUNC0( index, index_save, n * sizeof(GLuint) );
      if (ctx->Color.SWLogicOpEnabled) {
         FUNC5( ctx, n, x, y, index, mask );
      }
      if (ctx->Color.SWmasking) {
         FUNC6( ctx, n, x, y, index );
      }
      (*ctx->Driver.WriteIndexSpan)( ctx, n, x, y, index, mask );
      (*ctx->Driver.SetBuffer)( ctx, GL_FRONT );
   }
}