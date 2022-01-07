
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {double DepthBias; double DepthScale; double ZoomX; double ZoomY; } ;
struct TYPE_12__ {int* RasterColor; size_t RasterIndex; scalar_t__* RasterPos; } ;
struct TYPE_14__ {TYPE_3__* Visual; TYPE_1__ Pixel; TYPE_2__ Current; } ;
struct TYPE_13__ {int RedScale; int GreenScale; int BlueScale; int AlphaScale; scalar_t__ RGBAflag; } ;
typedef int GLvoid ;
typedef int GLushort ;
typedef size_t GLuint ;
typedef int GLubyte ;
typedef size_t GLsizei ;
typedef int GLshort ;
typedef scalar_t__ GLint ;
typedef int GLfloat ;
typedef int GLenum ;
typedef size_t GLdepth ;
typedef TYPE_4__ GLcontext ;
typedef int GLbyte ;
typedef int GLboolean ;


 int BYTE_TO_FLOAT (int ) ;
 int CLAMP (int,float,float) ;
 int DEPTH_SCALE ;
 int GL_BITMAP ;







 int INT_TO_FLOAT (int ) ;
 size_t MAX_DEPTH ;
 int MAX_WIDTH ;
 int MEMSET (int *,scalar_t__,size_t) ;
 int SHORT_TO_FLOAT (int ) ;
 int UBYTE_TO_FLOAT (int ) ;
 int UINT_TO_FLOAT (int ) ;
 int USHORT_TO_FLOAT (int ) ;
 int gl_problem (TYPE_4__*,char*) ;
 int gl_write_color_span (TYPE_4__*,size_t,scalar_t__,scalar_t__,size_t*,int *,int *,int *,int *,int ) ;
 int gl_write_index_span (TYPE_4__*,size_t,scalar_t__,scalar_t__,size_t*,size_t*,int ) ;
 int gl_write_zoomed_color_span (TYPE_4__*,size_t,scalar_t__,scalar_t__,size_t*,int *,int *,int *,int *,scalar_t__) ;
 int gl_write_zoomed_index_span (TYPE_4__*,size_t,scalar_t__,scalar_t__,size_t*,size_t*,int ) ;

__attribute__((used)) static void draw_depth_pixels( GLcontext* ctx, GLsizei width, GLsizei height,
          GLenum type, const GLvoid *pixels )
{
   GLint x, y, desty;
   GLubyte red[MAX_WIDTH], green[MAX_WIDTH], blue[MAX_WIDTH], alpha[MAX_WIDTH];
   GLuint ispan[MAX_WIDTH];
   GLboolean bias_or_scale;
   GLboolean zoom;

   bias_or_scale = ctx->Pixel.DepthBias!=0.0 || ctx->Pixel.DepthScale!=1.0;
   zoom = ctx->Pixel.ZoomX!=1.0 || ctx->Pixel.ZoomY!=1.0;


   x = (GLint) (ctx->Current.RasterPos[0] + 0.5F);
   y = (GLint) (ctx->Current.RasterPos[1] + 0.5F);
   desty = y;


   if (ctx->Visual->RGBAflag) {
      GLint r, g, b, a;
      r = (GLint) (ctx->Current.RasterColor[0] * ctx->Visual->RedScale);
      g = (GLint) (ctx->Current.RasterColor[1] * ctx->Visual->GreenScale);
      b = (GLint) (ctx->Current.RasterColor[2] * ctx->Visual->BlueScale);
      a = (GLint) (ctx->Current.RasterColor[3] * ctx->Visual->AlphaScale);
      MEMSET( red, r, width );
      MEMSET( green, g, width );
      MEMSET( blue, b, width );
      MEMSET( alpha, a, width );
   }
   else {
      GLuint i;
      for (i=0;i<width;i++) {
  ispan[i] = ctx->Current.RasterIndex;
      }
   }

   if (type==129 && !bias_or_scale && !zoom && ctx->Visual->RGBAflag)
   {

      GLuint i, j;

      GLuint shift = 0;
      GLuint max = MAX_DEPTH;
      while ((max&0x80000000)==0) {
         max = max << 1;
         shift++;
      }
      for (j=0;j<height;j++,y++) {
         GLdepth zspan[MAX_WIDTH];
         GLuint *zptr = (GLuint *) pixels + j * width;
         for (i=0;i<width;i++) {
            zspan[i] = zptr[i] >> shift;
         }
         gl_write_color_span( ctx, width, x, y, zspan,
                              red, green, blue, alpha, GL_BITMAP );
      }
   }
   else {

      GLuint i, j;


      for (i=0;i<height;i++,y++) {
         GLfloat depth[MAX_WIDTH];
         GLdepth zspan[MAX_WIDTH];

         switch (type) {
            case 130:
               {
                  GLubyte *src = (GLubyte *) pixels + i * width;
                  for (j=0;j<width;j++) {
                     depth[j] = UBYTE_TO_FLOAT( *src++ );
                  }
               }
               break;
            case 134:
               {
                  GLbyte *src = (GLbyte *) pixels + i * width;
                  for (j=0;j<width;j++) {
                     depth[j] = BYTE_TO_FLOAT( *src++ );
                  }
               }
               break;
            case 128:
               {
                  GLushort *src = (GLushort *) pixels + i * width;
                  for (j=0;j<width;j++) {
                     depth[j] = USHORT_TO_FLOAT( *src++ );
                  }
               }
               break;
            case 131:
               {
                  GLshort *src = (GLshort *) pixels + i * width;
                  for (j=0;j<width;j++) {
                     depth[j] = SHORT_TO_FLOAT( *src++ );
                  }
               }
               break;
            case 129:
               {
                  GLuint *src = (GLuint *) pixels + i * width;
                  for (j=0;j<width;j++) {
                     depth[j] = UINT_TO_FLOAT( *src++ );
                  }
               }
               break;
            case 132:
               {
                  GLint *src = (GLint *) pixels + i * width;
                  for (j=0;j<width;j++) {
                     depth[j] = INT_TO_FLOAT( *src++ );
                  }
               }
               break;
            case 133:
               {
                  GLfloat *src = (GLfloat *) pixels + i * width;
                  for (j=0;j<width;j++) {
                     depth[j] = *src++;
                  }
               }
               break;
            default:
               gl_problem(ctx, "Bad type in draw_depth_pixels");
               return;
         }


         if (ctx->Pixel.DepthScale!=1.0 || ctx->Pixel.DepthBias!=0.0) {
            for (j=0;j<width;j++) {
               depth[j] = depth[j] * ctx->Pixel.DepthScale + ctx->Pixel.DepthBias;
            }
         }


         for (j=0;j<width;j++) {
            zspan[j] = (GLdepth) (CLAMP( depth[j], 0.0F, 1.0F ) * DEPTH_SCALE);
         }

         if (ctx->Visual->RGBAflag) {
            if (zoom) {
               gl_write_zoomed_color_span( ctx, width, x, y, zspan,
                                           red, green, blue, alpha, desty );
            }
            else {
               gl_write_color_span( ctx, width, x, y, zspan,
                                    red, green, blue, alpha, GL_BITMAP );
            }
         }
         else {
            if (zoom) {
               gl_write_zoomed_index_span( ctx, width, x, y, zspan,
                                           ispan, GL_BITMAP );
            }
            else {
               gl_write_index_span( ctx, width, x, y, zspan, ispan, GL_BITMAP );
            }
         }

      }
   }
}
