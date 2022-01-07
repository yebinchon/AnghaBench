
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int VertexSize; int VertexType; void* VertexPtr; scalar_t__ VertexStride; scalar_t__ VertexStrideB; } ;
struct TYPE_6__ {TYPE_1__ Array; } ;
typedef int GLvoid ;
typedef scalar_t__ GLsizei ;
typedef int GLshort ;
typedef int GLint ;
typedef int GLfloat ;
typedef int GLenum ;
typedef int GLdouble ;
typedef TYPE_2__ GLcontext ;





 int GL_INVALID_ENUM ;
 int GL_INVALID_VALUE ;

 int gl_error (TYPE_2__*,int ,char*) ;

void gl_VertexPointer( GLcontext *ctx,
                       GLint size, GLenum type, GLsizei stride,
                       const GLvoid *ptr )
{
   if (size<2 || size>4) {
      gl_error( ctx, GL_INVALID_VALUE, "glVertexPointer(size)" );
      return;
   }
   if (stride<0) {
      gl_error( ctx, GL_INVALID_VALUE, "glVertexPointer(stride)" );
      return;
   }
   switch (type) {
      case 128:
         ctx->Array.VertexStrideB = stride ? stride : size*sizeof(GLshort);
         break;
      case 129:
         ctx->Array.VertexStrideB = stride ? stride : size*sizeof(GLint);
         break;
      case 130:
         ctx->Array.VertexStrideB = stride ? stride : size*sizeof(GLfloat);
         break;
      case 131:
         ctx->Array.VertexStrideB = stride ? stride : size*sizeof(GLdouble);
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glVertexPointer(type)" );
         return;
   }
   ctx->Array.VertexSize = size;
   ctx->Array.VertexType = type;
   ctx->Array.VertexStride = stride;
   ctx->Array.VertexPtr = (void *) ptr;
}
