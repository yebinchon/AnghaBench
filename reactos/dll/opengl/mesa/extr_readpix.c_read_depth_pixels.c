
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int Alignment; scalar_t__ RowLength; int SkipRows; int SkipPixels; scalar_t__ SwapBytes; } ;
struct TYPE_12__ {double DepthBias; double DepthScale; } ;
struct TYPE_11__ {int (* ReadDepthSpanFloat ) (TYPE_5__*,int,int,int,int*) ;int (* ReadDepthSpanInt ) (TYPE_5__*,int,int,int,int *) ;} ;
struct TYPE_14__ {TYPE_4__ Pack; TYPE_3__ Pixel; TYPE_2__ Driver; TYPE_1__* Visual; } ;
struct TYPE_10__ {scalar_t__ DepthBits; } ;
typedef int GLvoid ;
typedef int GLushort ;
typedef int GLuint ;
typedef int GLubyte ;
typedef int GLsizei ;
typedef int GLshort ;
typedef int GLint ;
typedef int GLfloat ;
typedef int GLenum ;
typedef int GLdepth ;
typedef TYPE_5__ GLcontext ;
typedef int GLbyte ;
typedef int GLboolean ;


 int CEILING (int,int) ;
 int CLAMP (int,double,double) ;
 int FLOAT_TO_BYTE (int) ;
 int FLOAT_TO_INT (int) ;
 int FLOAT_TO_SHORT (int) ;
 int FLOAT_TO_UBYTE (int) ;
 int FLOAT_TO_UINT (int) ;
 int FLOAT_TO_USHORT (int) ;



 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;




 int MAX_DEPTH ;
 int MAX_WIDTH ;
 int gl_error (TYPE_5__*,int ,char*) ;
 int gl_sizeof_type (int) ;
 int gl_swap2 (int *,int) ;
 int gl_swap4 (int*,int) ;
 int stub1 (TYPE_5__*,int,int,int,int *) ;
 int stub2 (TYPE_5__*,int,int,int,int*) ;

__attribute__((used)) static void read_depth_pixels( GLcontext *ctx,
                               GLint x, GLint y,
          GLsizei width, GLsizei height,
          GLenum type, GLvoid *pixels )
{
   GLint i, j;
   GLuint a, s, k, l, start;
   GLboolean bias_or_scale;


   if (ctx->Visual->DepthBits<=0) {

      gl_error( ctx, GL_INVALID_OPERATION, "glReadPixels" );
      return;
   }

   bias_or_scale = ctx->Pixel.DepthBias!=0.0 || ctx->Pixel.DepthScale!=1.0;


   s = gl_sizeof_type( type );
   if (s<=0) {
      gl_error( ctx, GL_INVALID_ENUM, "glReadPixels(type)" );
      return;
   }


   a = ctx->Pack.Alignment;
   if (ctx->Pack.RowLength>0) {
      l = ctx->Pack.RowLength;
   }
   else {
      l = width;
   }

   if (s>=a) {
      k = l;
   }
   else {
      k = a/s * CEILING( s*l, a );
   }


   start = ctx->Pack.SkipRows * k + ctx->Pack.SkipPixels;

   if (type==129 && !bias_or_scale && !ctx->Pack.SwapBytes) {


      GLuint shift = 0;
      GLuint max = MAX_DEPTH;
      while ((max&0x80000000)==0) {
         max = max << 1;
         shift++;
      }
      for (j=0;j<height;j++,y++) {
         GLuint *dst = (GLuint *) pixels + start + j * k;
         (*ctx->Driver.ReadDepthSpanInt)( ctx, width, x, y, (GLdepth*) dst);
         for (i=0;i<width;i++) {
            dst[i] = dst[i] << shift;
         }
      }
   }
   else {

      for (j=0;j<height;j++,y++) {
         GLfloat depth[MAX_WIDTH];

         (*ctx->Driver.ReadDepthSpanFloat)( ctx, width, x, y, depth );

         if (bias_or_scale) {
            for (i=0;i<width;i++) {
               GLfloat d;
               d = depth[i] * ctx->Pixel.DepthScale + ctx->Pixel.DepthBias;
               depth[i] = CLAMP( d, 0.0, 1.0 );
            }
         }

         switch (type) {
            case 130:
               {
                  GLubyte *dst = (GLubyte *) pixels + start + j * k;
                  for (i=0;i<width;i++) {
                     *dst++ = FLOAT_TO_UBYTE( depth[i] );
                  }
               }
               break;
            case 134:
               {
                  GLbyte *dst = (GLbyte *) pixels + start + j * k;
                  for (i=0;i<width;i++) {
                     *dst++ = FLOAT_TO_BYTE( depth[i] );
                  }
               }
               break;
            case 128:
               {
                  GLushort *dst = (GLushort *) pixels + start + j * k;
                  for (i=0;i<width;i++) {
                     *dst++ = FLOAT_TO_USHORT( depth[i] );
                  }
                  if (ctx->Pack.SwapBytes) {
                     gl_swap2( (GLushort *) pixels + start + j * k, width );
                  }
               }
               break;
            case 131:
               {
                  GLshort *dst = (GLshort *) pixels + start + j * k;
                  for (i=0;i<width;i++) {
                     *dst++ = FLOAT_TO_SHORT( depth[i] );
                  }
                  if (ctx->Pack.SwapBytes) {
                     gl_swap2( (GLushort *) pixels + start + j * k, width );
                  }
               }
               break;
            case 129:
               {
                  GLuint *dst = (GLuint *) pixels + start + j * k;
                  for (i=0;i<width;i++) {
                     *dst++ = FLOAT_TO_UINT( depth[i] );
                  }
                  if (ctx->Pack.SwapBytes) {
                     gl_swap4( (GLuint *) pixels + start + j * k, width );
                  }
               }
               break;
            case 132:
               {
                  GLint *dst = (GLint *) pixels + start + j * k;
                  for (i=0;i<width;i++) {
                     *dst++ = FLOAT_TO_INT( depth[i] );
                  }
                  if (ctx->Pack.SwapBytes) {
                     gl_swap4( (GLuint *) pixels + start + j * k, width );
                  }
               }
               break;
            case 133:
               {
                  GLfloat *dst = (GLfloat *) pixels + start + j * k;
                  for (i=0;i<width;i++) {
                     *dst++ = depth[i];
                  }
                  if (ctx->Pack.SwapBytes) {
                     gl_swap4( (GLuint *) pixels + start + j * k, width );
                  }
               }
               break;
            default:
               gl_error( ctx, GL_INVALID_ENUM, "glReadPixels(type)" );
         }
      }
   }
}
