
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ColorSize; int ColorType; void* ColorPtr; scalar_t__ ColorStride; scalar_t__ ColorStrideB; } ;
struct TYPE_6__ {TYPE_1__ Array; } ;
typedef int GLvoid ;
typedef int GLushort ;
typedef int GLuint ;
typedef int GLubyte ;
typedef scalar_t__ GLsizei ;
typedef int GLshort ;
typedef int GLint ;
typedef int GLfloat ;
typedef int GLenum ;
typedef int GLdouble ;
typedef TYPE_2__ GLcontext ;
typedef int GLbyte ;






 int GL_INVALID_ENUM ;
 int GL_INVALID_VALUE ;




 int gl_error (TYPE_2__*,int ,char*) ;

void gl_ColorPointer( GLcontext *ctx,
                      GLint size, GLenum type, GLsizei stride,
                      const GLvoid *ptr )
{
   if (size<3 || size>4) {
      gl_error( ctx, GL_INVALID_VALUE, "glColorPointer(size)" );
      return;
   }
   if (stride<0) {
      gl_error( ctx, GL_INVALID_VALUE, "glColorPointer(stride)" );
      return;
   }
   switch (type) {
      case 135:
         ctx->Array.ColorStrideB = stride ? stride : size*sizeof(GLbyte);
         break;
      case 130:
         ctx->Array.ColorStrideB = stride ? stride : size*sizeof(GLubyte);
         break;
      case 131:
         ctx->Array.ColorStrideB = stride ? stride : size*sizeof(GLshort);
         break;
      case 128:
         ctx->Array.ColorStrideB = stride ? stride : size*sizeof(GLushort);
         break;
      case 132:
         ctx->Array.ColorStrideB = stride ? stride : size*sizeof(GLint);
         break;
      case 129:
         ctx->Array.ColorStrideB = stride ? stride : size*sizeof(GLuint);
         break;
      case 133:
         ctx->Array.ColorStrideB = stride ? stride : size*sizeof(GLfloat);
         break;
      case 134:
         ctx->Array.ColorStrideB = stride ? stride : size*sizeof(GLdouble);
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glColorPointer(type)" );
         return;
   }
   ctx->Array.ColorSize = size;
   ctx->Array.ColorType = type;
   ctx->Array.ColorStride = stride;
   ctx->Array.ColorPtr = (void *) ptr;
}
