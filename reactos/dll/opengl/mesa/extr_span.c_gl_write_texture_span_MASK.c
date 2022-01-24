#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_9__ ;
typedef  struct TYPE_39__   TYPE_8__ ;
typedef  struct TYPE_38__   TYPE_7__ ;
typedef  struct TYPE_37__   TYPE_6__ ;
typedef  struct TYPE_36__   TYPE_5__ ;
typedef  struct TYPE_35__   TYPE_4__ ;
typedef  struct TYPE_34__   TYPE_3__ ;
typedef  struct TYPE_33__   TYPE_2__ ;
typedef  struct TYPE_32__   TYPE_1__ ;
typedef  struct TYPE_31__   TYPE_11__ ;
typedef  struct TYPE_30__   TYPE_10__ ;

/* Type definitions */
struct TYPE_40__ {scalar_t__ SWmasking; scalar_t__ BlendEnabled; scalar_t__ SWLogicOpEnabled; scalar_t__ AlphaEnabled; } ;
struct TYPE_39__ {scalar_t__ Test; } ;
struct TYPE_38__ {scalar_t__ Enabled; } ;
struct TYPE_37__ {scalar_t__ StippleFlag; } ;
struct TYPE_36__ {scalar_t__ Enabled; } ;
struct TYPE_35__ {scalar_t__ Enabled; } ;
struct TYPE_34__ {scalar_t__ Fog; } ;
struct TYPE_33__ {scalar_t__ Enabled; } ;
struct TYPE_32__ {int /*<<< orphan*/  FrontAlpha; int /*<<< orphan*/  Alpha; int /*<<< orphan*/  BackAlpha; } ;
struct TYPE_30__ {int (* DepthTestSpan ) (TYPE_11__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* SetBuffer ) (TYPE_11__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* WriteColorSpan ) (TYPE_11__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_31__ {int RasterMask; TYPE_1__* Buffer; TYPE_10__ Driver; TYPE_9__ Color; TYPE_8__ Depth; TYPE_7__ Stencil; TYPE_6__ Polygon; TYPE_5__ Scissor; TYPE_4__ Texture; TYPE_3__ Hint; TYPE_2__ Fog; } ;
typedef  int GLuint ;
typedef  int /*<<< orphan*/  GLubyte ;
typedef  int /*<<< orphan*/  GLint ;
typedef  int /*<<< orphan*/  GLfloat ;
typedef  scalar_t__ GLenum ;
typedef  int /*<<< orphan*/  GLdepth ;
typedef  TYPE_11__ GLcontext ;
typedef  scalar_t__ GLboolean ;

/* Variables and functions */
 int ALPHABUF_BIT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FRONT_AND_BACK_BIT ; 
 int /*<<< orphan*/  GL_BACK ; 
 scalar_t__ GL_BITMAP ; 
 scalar_t__ GL_FALSE ; 
 int /*<<< orphan*/  GL_FRONT ; 
 scalar_t__ GL_NICEST ; 
 scalar_t__ GL_POLYGON ; 
 scalar_t__ GL_TRUE ; 
 int MAX_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int NO_DRAW_BIT ; 
 int WINCLIP_BIT ; 
 scalar_t__ FUNC3 (TYPE_11__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_11__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_11__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_11__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_11__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_11__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_11__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_11__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_11__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_11__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_11__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_11__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_11__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_11__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_11__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_11__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_11__*,int /*<<< orphan*/ ) ; 

void FUNC20( GLcontext *ctx,
                            GLuint n, GLint x, GLint y, GLdepth z[],
			    GLfloat s[], GLfloat t[], GLfloat u[],
                            GLfloat lambda[],
			    GLubyte r[], GLubyte g[],
			    GLubyte b[], GLubyte a[],
			    GLenum primitive )
{
   GLubyte mask[MAX_WIDTH];
   GLboolean write_all = GL_TRUE;
   GLubyte rtmp[MAX_WIDTH], gtmp[MAX_WIDTH], btmp[MAX_WIDTH], atmp[MAX_WIDTH];
   GLubyte *red, *green, *blue, *alpha;

   /* init mask to 1's (all pixels are to be written) */
   FUNC2(mask, 1, n);

   if ((ctx->RasterMask & WINCLIP_BIT) || primitive==GL_BITMAP) {
      if (FUNC3( ctx,n,x,y,mask)==0) {
	 return;
      }
      write_all = GL_FALSE;
   }


   if (primitive==GL_BITMAP || (ctx->RasterMask & FRONT_AND_BACK_BIT)) {
      /* must make a copy of the colors since they may be modified */
      FUNC1( rtmp, r, n * sizeof(GLubyte) );
      FUNC1( gtmp, g, n * sizeof(GLubyte) );
      FUNC1( btmp, b, n * sizeof(GLubyte) );
      FUNC1( atmp, a, n * sizeof(GLubyte) );
      red = rtmp;
      green = gtmp;
      blue = btmp;
      alpha = atmp;
   }
   else {
      red   = r;
      green = g;
      blue  = b;
      alpha = a;
   }

   /* Texture */
   FUNC0(ctx->Texture.Enabled);
   FUNC12( ctx, n, s, t, u, lambda, red, green, blue, alpha );

   /* Per-pixel fog */
   if (ctx->Fog.Enabled && (ctx->Hint.Fog==GL_NICEST || primitive==GL_BITMAP
                            || ctx->Texture.Enabled)) {
      FUNC7( ctx, n, z, red, green, blue, alpha );
   }

   /* Do the scissor test */
   if (ctx->Scissor.Enabled) {
      if (FUNC10( ctx, n, x, y, mask )==0) {
	 return;
      }
      write_all = GL_FALSE;
   }

   /* Polygon Stippling */
   if (ctx->Polygon.StippleFlag && primitive==GL_POLYGON) {
      FUNC14( ctx, n, x, y, mask );
      write_all = GL_FALSE;
   }

   /* Do the alpha test */
   if (ctx->Color.AlphaEnabled) {
      if (FUNC4( ctx, n, alpha, mask )==0) {
	 return;
      }
      write_all = GL_FALSE;
   }

   if (ctx->Stencil.Enabled) {
      /* first stencil test */
      if (FUNC11( ctx, n, x, y, mask )==0) {
	 return;
      }
      /* depth buffering w/ stencil */
      FUNC6( ctx, n, x, y, z, mask );
      write_all = GL_FALSE;
   }
   else if (ctx->Depth.Test) {
      /* regular depth testing */
      GLuint m = (*ctx->Driver.DepthTestSpan)( ctx, n, x, y, z, mask );
      if (m==0) {
         return;
      }
      if (m<n) {
         write_all = GL_FALSE;
      }
   }

   if (ctx->RasterMask & NO_DRAW_BIT) {
      /* write no pixels */
      return;
   }

   /* blending */
   if (ctx->Color.SWLogicOpEnabled) {
      FUNC8( ctx, n, x, y, red, green, blue, alpha, mask );
   }
   else  if (ctx->Color.BlendEnabled) {
      FUNC5( ctx, n, x, y, red, green, blue, alpha, mask );
   }

   if (ctx->Color.SWmasking) {
      FUNC9( ctx, n, x, y, red, green, blue, alpha );
   }

   /* write pixels */
   (*ctx->Driver.WriteColorSpan)( ctx, n, x, y, red, green, blue, alpha,
                                  write_all ? NULL : mask );
   if (ctx->RasterMask & ALPHABUF_BIT) {
      FUNC13( ctx, n, x, y, alpha, write_all ? NULL : mask );
   }

   if (ctx->RasterMask & FRONT_AND_BACK_BIT) {
      /* Also draw to back buffer */
      FUNC1( rtmp, r, n * sizeof(GLubyte) );
      FUNC1( gtmp, g, n * sizeof(GLubyte) );
      FUNC1( btmp, b, n * sizeof(GLubyte) );
      FUNC1( atmp, a, n * sizeof(GLubyte) );
      (*ctx->Driver.SetBuffer)( ctx, GL_BACK );
      if (ctx->Color.SWLogicOpEnabled) {
         FUNC8( ctx, n, x, y, red, green, blue, alpha, mask );
      }
      else if (ctx->Color.BlendEnabled) {
         FUNC5( ctx, n, x, y, red, green, blue, alpha, mask );
      }
      if (ctx->Color.SWmasking) {
         FUNC9( ctx, n, x, y, red, green, blue, alpha );
      }
      (*ctx->Driver.WriteColorSpan)( ctx, n, x, y, red, green, blue, alpha,
                                     write_all ? NULL : mask );
      (*ctx->Driver.SetBuffer)( ctx, GL_FRONT );
      if (ctx->RasterMask & ALPHABUF_BIT) {
         ctx->Buffer->Alpha = ctx->Buffer->BackAlpha;
         FUNC13( ctx, n, x, y, alpha, write_all ? NULL : mask );
         ctx->Buffer->Alpha = ctx->Buffer->FrontAlpha;
      }
   }
}