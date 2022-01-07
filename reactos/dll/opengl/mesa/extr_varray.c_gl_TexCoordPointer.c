
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int TexCoordStrideB; int TexCoordSize; int TexCoordType; int TexCoordStride; void* TexCoordPtr; } ;
struct TYPE_6__ {TYPE_1__ Array; } ;
typedef int GLvoid ;
typedef int GLsizei ;
typedef int GLshort ;
typedef int GLint ;
typedef int GLfloat ;
typedef int GLenum ;
typedef int GLdouble ;
typedef TYPE_2__ GLcontext ;





 int GL_INVALID_ENUM ;
 int GL_INVALID_VALUE ;

 int gl_error (TYPE_2__*,int ,char*) ;

void gl_TexCoordPointer( GLcontext *ctx,
                         GLint size, GLenum type, GLsizei stride,
                         const GLvoid *ptr )
{
   if (size<1 || size>4) {
      gl_error( ctx, GL_INVALID_VALUE, "glTexCoordPointer(size)" );
      return;
   }
   switch (type) {
      case 128:
         ctx->Array.TexCoordStrideB = stride ? stride : size*sizeof(GLshort);
         break;
      case 129:
         ctx->Array.TexCoordStrideB = stride ? stride : size*sizeof(GLint);
         break;
      case 130:
         ctx->Array.TexCoordStrideB = stride ? stride : size*sizeof(GLfloat);
         break;
      case 131:
         ctx->Array.TexCoordStrideB = stride ? stride : size*sizeof(GLdouble);
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glTexCoordPointer(type)" );
         return;
   }
   if (stride<0) {
      gl_error( ctx, GL_INVALID_VALUE, "glTexCoordPointer(stride)" );
      return;
   }
   ctx->Array.TexCoordSize = size;
   ctx->Array.TexCoordType = type;
   ctx->Array.TexCoordStride = stride;
   ctx->Array.TexCoordPtr = (void *) ptr;
}
