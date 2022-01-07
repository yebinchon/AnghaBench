
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int IndexType; void* IndexPtr; scalar_t__ IndexStride; scalar_t__ IndexStrideB; } ;
struct TYPE_6__ {TYPE_1__ Array; } ;
typedef int GLvoid ;
typedef scalar_t__ GLsizei ;
typedef int GLint ;
typedef int GLfloat ;
typedef int GLenum ;
typedef int GLdouble ;
typedef TYPE_2__ GLcontext ;
typedef int GLbyte ;





 int GL_INVALID_ENUM ;
 int GL_INVALID_VALUE ;

 int gl_error (TYPE_2__*,int ,char*) ;

void gl_IndexPointer( GLcontext *ctx,
                      GLenum type, GLsizei stride, const GLvoid *ptr )
{
   if (stride<0) {
      gl_error( ctx, GL_INVALID_VALUE, "glIndexPointer(stride)" );
      return;
   }
   switch (type) {
      case 128:
         ctx->Array.IndexStrideB = stride ? stride : sizeof(GLbyte);
         break;
      case 129:
         ctx->Array.IndexStrideB = stride ? stride : sizeof(GLint);
         break;
      case 130:
         ctx->Array.IndexStrideB = stride ? stride : sizeof(GLfloat);
         break;
      case 131:
         ctx->Array.IndexStrideB = stride ? stride : sizeof(GLdouble);
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glIndexPointer(type)" );
         return;
   }
   ctx->Array.IndexType = type;
   ctx->Array.IndexStride = stride;
   ctx->Array.IndexPtr = (void *) ptr;
}
