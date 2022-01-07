
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {size_t Alignment; scalar_t__ RowLength; size_t SkipRows; size_t SkipPixels; int SwapBytes; } ;
struct TYPE_11__ {size_t IndexShift; scalar_t__ IndexOffset; size_t* MapItoI; scalar_t__ MapColorFlag; } ;
struct TYPE_10__ {int (* ReadIndexSpan ) (TYPE_5__*,scalar_t__,scalar_t__,scalar_t__,size_t*) ;} ;
struct TYPE_13__ {TYPE_4__ Pack; TYPE_3__ Pixel; TYPE_2__ Driver; TYPE_1__* Visual; } ;
struct TYPE_9__ {scalar_t__ RGBAflag; } ;
typedef int GLvoid ;
typedef int GLushort ;
typedef size_t GLuint ;
typedef int GLubyte ;
typedef scalar_t__ GLsizei ;
typedef int GLshort ;
typedef scalar_t__ GLint ;
typedef int GLfloat ;
typedef int GLenum ;
typedef TYPE_5__ GLcontext ;
typedef int GLbyte ;


 size_t CEILING (size_t,size_t) ;



 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;




 int MAX_WIDTH ;
 int gl_error (TYPE_5__*,int ,char*) ;
 size_t gl_sizeof_type (int) ;
 int gl_swap2 (int *,scalar_t__) ;
 int gl_swap4 (size_t*,scalar_t__) ;
 int stub1 (TYPE_5__*,scalar_t__,scalar_t__,scalar_t__,size_t*) ;

__attribute__((used)) static void read_index_pixels( GLcontext *ctx,
                               GLint x, GLint y,
          GLsizei width, GLsizei height,
          GLenum type, GLvoid *pixels )
{
   GLint i, j;
   GLuint a, s, k, l, start;


   if (ctx->Visual->RGBAflag) {
      gl_error( ctx, GL_INVALID_OPERATION, "glReadPixels" );
      return;
   }


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


   for (j=0;j<height;j++,y++) {
      GLuint index[MAX_WIDTH];
      (*ctx->Driver.ReadIndexSpan)( ctx, width, x, y, index );

      if (ctx->Pixel.IndexShift!=0 || ctx->Pixel.IndexOffset!=0) {
  GLuint s;
  if (ctx->Pixel.IndexShift<0) {

     s = -ctx->Pixel.IndexShift;
     for (i=0;i<width;i++) {
        index[i] = (index[i] >> s) + ctx->Pixel.IndexOffset;
     }
  }
  else {

     s = ctx->Pixel.IndexShift;
     for (i=0;i<width;i++) {
        index[i] = (index[i] << s) + ctx->Pixel.IndexOffset;
     }
  }
      }

      if (ctx->Pixel.MapColorFlag) {
  for (i=0;i<width;i++) {
     index[i] = ctx->Pixel.MapItoI[ index[i] ];
  }
      }

      switch (type) {
  case 130:
     {
        GLubyte *dst = (GLubyte *) pixels + start + j * k;
        for (i=0;i<width;i++) {
    *dst++ = (GLubyte) index[i];
        }
     }
     break;
  case 134:
     {
        GLbyte *dst = (GLbyte *) pixels + start + j * k;
        for (i=0;i<width;i++) {
    *dst++ = (GLbyte) index[i];
        }
     }
     break;
  case 128:
     {
        GLushort *dst = (GLushort *) pixels + start + j * k;
        for (i=0;i<width;i++) {
    *dst++ = (GLushort) index[i];
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
    *dst++ = (GLshort) index[i];
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
    *dst++ = (GLuint) index[i];
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
    *dst++ = (GLint) index[i];
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
    *dst++ = (GLfloat) index[i];
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
