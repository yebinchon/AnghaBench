#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_8__ ;
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
struct TYPE_35__ {scalar_t__ (* DepthTestSpan ) (TYPE_9__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* SetBuffer ) (TYPE_9__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* WriteMonoindexSpan ) (TYPE_9__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* WriteIndexSpan ) (TYPE_9__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ;} ;
struct TYPE_34__ {scalar_t__ SWmasking; scalar_t__ SWLogicOpEnabled; } ;
struct TYPE_33__ {scalar_t__ Fog; } ;
struct TYPE_32__ {scalar_t__ Enabled; } ;
struct TYPE_31__ {scalar_t__ Test; } ;
struct TYPE_30__ {scalar_t__ Enabled; } ;
struct TYPE_29__ {scalar_t__ StippleFlag; } ;
struct TYPE_28__ {scalar_t__ Enabled; } ;
struct TYPE_36__ {int RasterMask; TYPE_8__ Driver; TYPE_7__ Color; TYPE_6__ Hint; TYPE_5__ Fog; TYPE_4__ Depth; TYPE_3__ Stencil; TYPE_2__ Polygon; TYPE_1__ Scissor; } ;
typedef  size_t GLuint ;
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
 int /*<<< orphan*/  FUNC0 (size_t*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,size_t) ; 
 int NO_DRAW_BIT ; 
 int WINCLIP_BIT ; 
 scalar_t__ FUNC2 (TYPE_9__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*,size_t,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC7 (TYPE_9__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_9__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_9__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_9__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_9__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_9__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_9__*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_9__*,int /*<<< orphan*/ ) ; 

void FUNC19( GLcontext *ctx,
                              GLuint n, GLint x, GLint y, GLdepth z[],
			      GLuint index, GLenum primitive )
{
    GLuint i;
    GLubyte mask[MAX_WIDTH];
    GLuint index_save[MAX_WIDTH];

    /* init mask to 1's (all pixels are to be written) */
    FUNC1(mask, 1, n);

    if ((ctx->RasterMask & WINCLIP_BIT) || primitive==GL_BITMAP)
    {
        if (FUNC2( ctx,n,x,y,mask)==0) {
            return;
        }
    }

    /* Do the scissor test */
    if (ctx->Scissor.Enabled)
    {
        if (FUNC7( ctx, n, x, y, mask )==0) {
            return;
        }
    }

    /* Polygon Stippling */
    if (ctx->Polygon.StippleFlag && primitive==GL_POLYGON)
    {
        FUNC9( ctx, n, x, y, mask );
    }

    if (ctx->Stencil.Enabled)
    {
        /* first stencil test */
        if (FUNC8( ctx, n, x, y, mask )==0)
        {
            return;
        }
        /* depth buffering w/ stencil */
        FUNC3( ctx, n, x, y, z, mask );
    }
    else if (ctx->Depth.Test)
    {
        /* regular depth testing */
        if ((*ctx->Driver.DepthTestSpan)( ctx, n, x, y, z, mask )==0)
            return;
    }

    if (ctx->RasterMask & NO_DRAW_BIT)
    {
        /* write no pixels */
        return;
   }

    if ((ctx->Fog.Enabled && (ctx->Hint.Fog==GL_NICEST || primitive==GL_BITMAP))
            || ctx->Color.SWLogicOpEnabled || ctx->Color.SWmasking)
    {
        GLuint ispan[MAX_WIDTH];
        /* index may change, replicate single index into an array */
        for (i=0;i<n;i++)
        {
            ispan[i] = index;
        }

        if (ctx->Fog.Enabled
                && (ctx->Hint.Fog==GL_NICEST || primitive==GL_BITMAP))
        {
            FUNC4( ctx, n, z, ispan );
        }

        if (ctx->RasterMask & FRONT_AND_BACK_BIT)
        {
            FUNC0( index_save, ispan, n * sizeof(GLuint) );
        }

        if (ctx->Color.SWLogicOpEnabled)
        {
            FUNC5( ctx, n, x, y, ispan, mask );
        }

        if (ctx->Color.SWmasking)
        {
            FUNC6( ctx, n, x, y, ispan );
        }

        (*ctx->Driver.WriteIndexSpan)( ctx, n, x, y, ispan, mask );

        if (ctx->RasterMask & FRONT_AND_BACK_BIT)
        {
             /*** Also draw to back buffer ***/
             (*ctx->Driver.SetBuffer)( ctx, GL_BACK );
             for (i=0;i<n;i++)
             {
                ispan[i] = index;
             }

             if (ctx->Color.SWLogicOpEnabled) {
                 FUNC5( ctx, n, x, y, ispan, mask );
             }
             if (ctx->Color.SWmasking) {
                 FUNC6( ctx, n, x, y, ispan );
             }
             (*ctx->Driver.WriteIndexSpan)( ctx, n, x, y, ispan, mask );
             (*ctx->Driver.SetBuffer)( ctx, GL_FRONT );
        }
    }
    else
    {
        (*ctx->Driver.WriteMonoindexSpan)( ctx, n, x, y, mask );

        if (ctx->RasterMask & FRONT_AND_BACK_BIT)
        {
            /*** Also draw to back buffer ***/
            (*ctx->Driver.SetBuffer)( ctx, GL_BACK );
            (*ctx->Driver.WriteMonoindexSpan)( ctx, n, x, y, mask );
            (*ctx->Driver.SetBuffer)( ctx, GL_FRONT );
        }
    }
}