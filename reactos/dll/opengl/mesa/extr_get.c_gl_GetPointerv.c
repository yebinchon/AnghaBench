
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * Buffer; } ;
struct TYPE_7__ {int * EdgeFlagPtr; int * TexCoordPtr; int * IndexPtr; int * ColorPtr; int * NormalPtr; int * VertexPtr; } ;
struct TYPE_8__ {TYPE_1__ Feedback; TYPE_2__ Array; } ;
typedef int GLvoid ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;






 int GL_INVALID_ENUM ;



 int gl_error (TYPE_3__*,int ,char*) ;

void gl_GetPointerv( GLcontext *ctx, GLenum pname, GLvoid **params )
{
   switch (pname) {
      case 128:
         *params = ctx->Array.VertexPtr;
         break;
      case 130:
         *params = ctx->Array.NormalPtr;
         break;
      case 134:
         *params = ctx->Array.ColorPtr;
         break;
      case 131:
         *params = ctx->Array.IndexPtr;
         break;
      case 129:
         *params = ctx->Array.TexCoordPtr;
         break;
      case 133:
         *params = ctx->Array.EdgeFlagPtr;
         break;
      case 132:
         *params = ctx->Feedback.Buffer;
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glGetPointerv" );
         return;
   }
}
