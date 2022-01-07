
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_35__ {scalar_t__ (* DepthTestSpan ) (TYPE_9__*,size_t,int ,int ,int *,int *) ;int (* SetBuffer ) (TYPE_9__*,int ) ;int (* WriteMonoindexSpan ) (TYPE_9__*,size_t,int ,int ,int *) ;int (* WriteIndexSpan ) (TYPE_9__*,size_t,int ,int ,size_t*,int *) ;} ;
struct TYPE_34__ {scalar_t__ SWmasking; scalar_t__ SWLogicOpEnabled; } ;
struct TYPE_33__ {scalar_t__ Fog; } ;
struct TYPE_32__ {scalar_t__ Enabled; } ;
struct TYPE_31__ {scalar_t__ Test; } ;
struct TYPE_30__ {scalar_t__ Enabled; } ;
struct TYPE_29__ {scalar_t__ StippleFlag; } ;
struct TYPE_28__ {scalar_t__ Enabled; } ;
struct TYPE_36__ {int RasterMask; TYPE_8__ Driver; TYPE_7__ Color; TYPE_6__ Hint; TYPE_5__ Fog; TYPE_4__ Depth; TYPE_3__ Stencil; TYPE_2__ Polygon; TYPE_1__ Scissor; } ;
typedef size_t GLuint ;
typedef int GLubyte ;
typedef int GLint ;
typedef scalar_t__ GLenum ;
typedef int GLdepth ;
typedef TYPE_9__ GLcontext ;


 int FRONT_AND_BACK_BIT ;
 int GL_BACK ;
 scalar_t__ GL_BITMAP ;
 int GL_FRONT ;
 scalar_t__ GL_NICEST ;
 scalar_t__ GL_POLYGON ;
 int MAX_WIDTH ;
 int MEMCPY (size_t*,size_t*,size_t) ;
 int MEMSET (int *,int,size_t) ;
 int NO_DRAW_BIT ;
 int WINCLIP_BIT ;
 scalar_t__ clip_span (TYPE_9__*,size_t,int ,int ,int *) ;
 int gl_depth_stencil_span (TYPE_9__*,size_t,int ,int ,int *,int *) ;
 int gl_fog_index_pixels (TYPE_9__*,size_t,int *,size_t*) ;
 int gl_logicop_ci_span (TYPE_9__*,size_t,int ,int ,size_t*,int *) ;
 int gl_mask_index_span (TYPE_9__*,size_t,int ,int ,size_t*) ;
 scalar_t__ gl_scissor_span (TYPE_9__*,size_t,int ,int ,int *) ;
 scalar_t__ gl_stencil_span (TYPE_9__*,size_t,int ,int ,int *) ;
 int stipple_polygon_span (TYPE_9__*,size_t,int ,int ,int *) ;
 scalar_t__ stub1 (TYPE_9__*,size_t,int ,int ,int *,int *) ;
 int stub2 (TYPE_9__*,size_t,int ,int ,size_t*,int *) ;
 int stub3 (TYPE_9__*,int ) ;
 int stub4 (TYPE_9__*,size_t,int ,int ,size_t*,int *) ;
 int stub5 (TYPE_9__*,int ) ;
 int stub6 (TYPE_9__*,size_t,int ,int ,int *) ;
 int stub7 (TYPE_9__*,int ) ;
 int stub8 (TYPE_9__*,size_t,int ,int ,int *) ;
 int stub9 (TYPE_9__*,int ) ;

void gl_write_monoindex_span( GLcontext *ctx,
                              GLuint n, GLint x, GLint y, GLdepth z[],
         GLuint index, GLenum primitive )
{
    GLuint i;
    GLubyte mask[MAX_WIDTH];
    GLuint index_save[MAX_WIDTH];


    MEMSET(mask, 1, n);

    if ((ctx->RasterMask & WINCLIP_BIT) || primitive==GL_BITMAP)
    {
        if (clip_span( ctx,n,x,y,mask)==0) {
            return;
        }
    }


    if (ctx->Scissor.Enabled)
    {
        if (gl_scissor_span( ctx, n, x, y, mask )==0) {
            return;
        }
    }


    if (ctx->Polygon.StippleFlag && primitive==GL_POLYGON)
    {
        stipple_polygon_span( ctx, n, x, y, mask );
    }

    if (ctx->Stencil.Enabled)
    {

        if (gl_stencil_span( ctx, n, x, y, mask )==0)
        {
            return;
        }

        gl_depth_stencil_span( ctx, n, x, y, z, mask );
    }
    else if (ctx->Depth.Test)
    {

        if ((*ctx->Driver.DepthTestSpan)( ctx, n, x, y, z, mask )==0)
            return;
    }

    if (ctx->RasterMask & NO_DRAW_BIT)
    {

        return;
   }

    if ((ctx->Fog.Enabled && (ctx->Hint.Fog==GL_NICEST || primitive==GL_BITMAP))
            || ctx->Color.SWLogicOpEnabled || ctx->Color.SWmasking)
    {
        GLuint ispan[MAX_WIDTH];

        for (i=0;i<n;i++)
        {
            ispan[i] = index;
        }

        if (ctx->Fog.Enabled
                && (ctx->Hint.Fog==GL_NICEST || primitive==GL_BITMAP))
        {
            gl_fog_index_pixels( ctx, n, z, ispan );
        }

        if (ctx->RasterMask & FRONT_AND_BACK_BIT)
        {
            MEMCPY( index_save, ispan, n * sizeof(GLuint) );
        }

        if (ctx->Color.SWLogicOpEnabled)
        {
            gl_logicop_ci_span( ctx, n, x, y, ispan, mask );
        }

        if (ctx->Color.SWmasking)
        {
            gl_mask_index_span( ctx, n, x, y, ispan );
        }

        (*ctx->Driver.WriteIndexSpan)( ctx, n, x, y, ispan, mask );

        if (ctx->RasterMask & FRONT_AND_BACK_BIT)
        {

             (*ctx->Driver.SetBuffer)( ctx, GL_BACK );
             for (i=0;i<n;i++)
             {
                ispan[i] = index;
             }

             if (ctx->Color.SWLogicOpEnabled) {
                 gl_logicop_ci_span( ctx, n, x, y, ispan, mask );
             }
             if (ctx->Color.SWmasking) {
                 gl_mask_index_span( ctx, n, x, y, ispan );
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

            (*ctx->Driver.SetBuffer)( ctx, GL_BACK );
            (*ctx->Driver.WriteMonoindexSpan)( ctx, n, x, y, mask );
            (*ctx->Driver.SetBuffer)( ctx, GL_FRONT );
        }
    }
}
