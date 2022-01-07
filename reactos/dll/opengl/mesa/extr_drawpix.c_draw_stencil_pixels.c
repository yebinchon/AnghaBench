
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {double ZoomX; double ZoomY; size_t IndexOffset; size_t IndexShift; size_t* MapStoS; scalar_t__ MapStencilFlag; } ;
struct TYPE_8__ {scalar_t__* RasterPos; } ;
struct TYPE_10__ {TYPE_2__ Pixel; TYPE_1__ Current; } ;
typedef int GLvoid ;
typedef int GLushort ;
typedef scalar_t__ GLuint ;
typedef size_t GLubyte ;
typedef scalar_t__ GLsizei ;
typedef int GLshort ;
typedef int GLint ;
typedef int GLfloat ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;
typedef size_t GLbyte ;
typedef int GLboolean ;






 int GL_INVALID_ENUM ;




 int MAX_WIDTH ;
 int MEMCPY (size_t*,size_t*,scalar_t__) ;
 int gl_error (TYPE_3__*,int ,char*) ;
 int gl_write_stencil_span (TYPE_3__*,scalar_t__,int,int,size_t*) ;
 int gl_write_zoomed_stencil_span (TYPE_3__*,scalar_t__,int,int,size_t*,int) ;

__attribute__((used)) static void draw_stencil_pixels( GLcontext* ctx, GLsizei width, GLsizei height,
            GLenum type, const GLvoid *pixels )
{
   GLint x, y, desty;
   GLuint i, j;
   GLboolean zoom;

   zoom = ctx->Pixel.ZoomX!=1.0 || ctx->Pixel.ZoomY!=1.0;


   x = (GLint) (ctx->Current.RasterPos[0] + 0.5F);
   y = (GLint) (ctx->Current.RasterPos[1] + 0.5F);
   desty = y;


   for (i=0;i<height;i++,y++) {
      GLubyte stencil[MAX_WIDTH];


      switch (type) {
  case 130:
     {
        GLubyte *src = (GLubyte *) pixels + i * width;
        MEMCPY( stencil, src, width );
     }
     break;
  case 134:
     {
        GLbyte *src = (GLbyte *) pixels + i * width;
        MEMCPY( stencil, src, width );
     }
     break;
  case 128:
     {
        GLushort *src = (GLushort *) pixels + i * width;
        for (j=0;j<width;j++) {
    stencil[j] = (GLubyte) ((*src++) & 0xff);
        }
     }
     break;
  case 131:
     {
        GLshort *src = (GLshort *) pixels + i * width;
        for (j=0;j<width;j++) {
    stencil[j] = (GLubyte) ((*src++) & 0xff);
        }
     }
     break;
  case 129:
     {
        GLuint *src = (GLuint *) pixels + i * width;
        for (j=0;j<width;j++) {
    stencil[j] = (GLubyte) ((*src++) & 0xff);
        }
     }
     break;
  case 132:
     {
        GLint *src = (GLint *) pixels + i * width;
        for (j=0;j<width;j++) {
    stencil[j] = (GLubyte) ((*src++) & 0xff);
        }
     }
     break;
  case 135:

     break;
  case 133:
     {
        GLfloat *src = (GLfloat *) pixels + i * width;
        for (j=0;j<width;j++) {
    stencil[j] = (GLubyte) (((GLint) *src++) & 0xff);
        }
     }
     break;
  default:
     gl_error( ctx, GL_INVALID_ENUM, "Internal: draw_stencil_pixels" );
      }


      if (ctx->Pixel.IndexOffset || ctx->Pixel.IndexShift) {
  if (ctx->Pixel.IndexShift>=0) {
     for (j=0;j<width;j++) {
        stencil[j] = (stencil[j] << ctx->Pixel.IndexShift)
            + ctx->Pixel.IndexOffset;
     }
  }
  else {
     for (j=0;j<width;j++) {
        stencil[j] = (stencil[j] >> -ctx->Pixel.IndexShift)
            + ctx->Pixel.IndexOffset;
     }
  }
      }


      if (ctx->Pixel.MapStencilFlag) {
  for (j=0;j<width;j++) {
     stencil[j] = ctx->Pixel.MapStoS[ stencil[j] ];
  }
      }


      if (zoom) {
         gl_write_zoomed_stencil_span( ctx, (GLuint) width, x, y, stencil, desty );
      }
      else {
         gl_write_stencil_span( ctx, (GLuint) width, x, y, stencil );
      }
   }
}
