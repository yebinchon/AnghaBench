
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int AlphaFunc; int AlphaRef; int AlphaRefUbyte; } ;
struct TYPE_9__ {TYPE_1__* Visual; TYPE_2__ Color; } ;
struct TYPE_7__ {int AlphaScale; } ;
typedef int GLubyte ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;
typedef int GLclampf ;


 int CLAMP (int ,float,float) ;




 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;




 scalar_t__ INSIDE_BEGIN_END (TYPE_3__*) ;
 int gl_error (TYPE_3__*,int ,char*) ;

void gl_AlphaFunc( GLcontext* ctx, GLenum func, GLclampf ref )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glAlphaFunc" );
      return;
   }
   switch (func) {
      case 129:
      case 130:
      case 134:
      case 131:
      case 132:
      case 128:
      case 133:
      case 135:
         ctx->Color.AlphaFunc = func;
         ctx->Color.AlphaRef = CLAMP( ref, 0.0F, 1.0F );
         ctx->Color.AlphaRefUbyte = (GLubyte) (ctx->Color.AlphaRef
                                              * ctx->Visual->AlphaScale);
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glAlphaFunc(func)" );
         break;
   }
}
