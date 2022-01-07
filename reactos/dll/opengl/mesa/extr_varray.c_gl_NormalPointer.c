
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int NormalType; void* NormalPtr; scalar_t__ NormalStride; scalar_t__ NormalStrideB; } ;
struct TYPE_6__ {TYPE_1__ Array; } ;
typedef int GLvoid ;
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

void gl_NormalPointer( GLcontext *ctx,
                       GLenum type, GLsizei stride, const GLvoid *ptr )
{
   if (stride<0) {
      gl_error( ctx, GL_INVALID_VALUE, "glNormalPointer(stride)" );
      return;
   }
   switch (type) {
      case 132:
         ctx->Array.NormalStrideB = stride ? stride : 3*sizeof(GLbyte);
         break;
      case 128:
         ctx->Array.NormalStrideB = stride ? stride : 3*sizeof(GLshort);
         break;
      case 129:
         ctx->Array.NormalStrideB = stride ? stride : 3*sizeof(GLint);
         break;
      case 130:
         ctx->Array.NormalStrideB = stride ? stride : 3*sizeof(GLfloat);
         break;
      case 131:
         ctx->Array.NormalStrideB = stride ? stride : 3*sizeof(GLdouble);
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glNormalPointer(type)" );
         return;
   }
   ctx->Array.NormalType = type;
   ctx->Array.NormalStride = stride;
   ctx->Array.NormalPtr = (void *) ptr;
}
