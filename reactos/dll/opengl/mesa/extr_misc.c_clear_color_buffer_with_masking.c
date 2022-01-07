
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {int (* WriteIndexSpan ) (TYPE_6__*,scalar_t__,scalar_t__,scalar_t__,int *,int*) ;int (* WriteColorSpan ) (TYPE_6__*,scalar_t__,scalar_t__,scalar_t__,int*,int*,int*,int*,int *) ;} ;
struct TYPE_16__ {int* ClearColor; int ClearIndex; } ;
struct TYPE_13__ {scalar_t__ Enabled; } ;
struct TYPE_18__ {int RasterMask; TYPE_5__ Driver; TYPE_4__ Color; TYPE_3__* Visual; TYPE_2__* Buffer; TYPE_1__ Scissor; } ;
struct TYPE_15__ {int RedScale; int GreenScale; int BlueScale; int AlphaScale; scalar_t__ RGBAflag; } ;
struct TYPE_14__ {scalar_t__ Xmin; scalar_t__ Ymin; scalar_t__ Ymax; scalar_t__ Xmax; scalar_t__ Height; scalar_t__ Width; } ;
typedef int GLuint ;
typedef int GLubyte ;
typedef scalar_t__ GLint ;
typedef TYPE_6__ GLcontext ;


 int ALPHABUF_BIT ;
 int MAX_WIDTH ;
 int MEMSET (int*,int,scalar_t__) ;
 int gl_mask_color_span (TYPE_6__*,scalar_t__,scalar_t__,scalar_t__,int*,int*,int*,int*) ;
 int gl_mask_index_span (TYPE_6__*,scalar_t__,scalar_t__,scalar_t__,int *) ;
 int gl_write_alpha_span (TYPE_6__*,scalar_t__,scalar_t__,scalar_t__,int*,int *) ;
 int stub1 (TYPE_6__*,scalar_t__,scalar_t__,scalar_t__,int*,int*,int*,int*,int *) ;
 int stub2 (TYPE_6__*,scalar_t__,scalar_t__,scalar_t__,int *,int*) ;

__attribute__((used)) static void clear_color_buffer_with_masking( GLcontext *ctx )
{
   GLint x, y, height, width;


   if (ctx->Scissor.Enabled) {
      x = ctx->Buffer->Xmin;
      y = ctx->Buffer->Ymin;
      height = ctx->Buffer->Ymax - ctx->Buffer->Ymin + 1;
      width = ctx->Buffer->Xmax - ctx->Buffer->Xmin + 1;
   }
   else {
      x = 0;
      y = 0;
      height = ctx->Buffer->Height;
      width = ctx->Buffer->Width;
   }

   if (ctx->Visual->RGBAflag) {

      GLubyte red[MAX_WIDTH], green[MAX_WIDTH];
      GLubyte blue[MAX_WIDTH], alpha[MAX_WIDTH];
      GLubyte r = ctx->Color.ClearColor[0] * ctx->Visual->RedScale;
      GLubyte g = ctx->Color.ClearColor[1] * ctx->Visual->GreenScale;
      GLubyte b = ctx->Color.ClearColor[2] * ctx->Visual->BlueScale;
      GLubyte a = ctx->Color.ClearColor[3] * ctx->Visual->AlphaScale;
      GLint i;
      for (i=0;i<height;i++,y++) {
         MEMSET( red, (int) r, width );
         MEMSET( green, (int) g, width );
         MEMSET( blue, (int) b, width );
         MEMSET( alpha, (int) a, width );
         gl_mask_color_span( ctx, width, x, y, red, green, blue, alpha );
         (*ctx->Driver.WriteColorSpan)( ctx,
                                 width, x, y, red, green, blue, alpha, ((void*)0) );
         if (ctx->RasterMask & ALPHABUF_BIT) {
            gl_write_alpha_span( ctx, width, x, y, alpha, ((void*)0) );
         }
      }
   }
   else {

      GLuint indx[MAX_WIDTH];
      GLubyte mask[MAX_WIDTH];
      GLint i, j;
      MEMSET( mask, 1, width );
      for (i=0;i<height;i++,y++) {
         for (j=0;j<width;j++) {
            indx[j] = ctx->Color.ClearIndex;
         }
         gl_mask_index_span( ctx, width, x, y, indx );
         (*ctx->Driver.WriteIndexSpan)( ctx, width, x, y, indx, mask );
      }
   }
}
