
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int (* ClearColor ) (TYPE_4__*,int ,int ,int ,int ) ;} ;
struct TYPE_9__ {int* ClearColor; } ;
struct TYPE_12__ {TYPE_3__ Driver; TYPE_2__* Visual; TYPE_1__ Color; } ;
struct TYPE_10__ {int RedScale; int GreenScale; int BlueScale; int AlphaScale; scalar_t__ RGBAflag; } ;
typedef int GLubyte ;
typedef int GLint ;
typedef TYPE_4__ GLcontext ;
typedef int GLclampf ;


 void* CLAMP (int ,float,float) ;
 int GL_INVALID_OPERATION ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_4__*) ;
 int gl_error (TYPE_4__*,int ,char*) ;
 int stub1 (TYPE_4__*,int ,int ,int ,int ) ;

void gl_ClearColor( GLcontext *ctx, GLclampf red, GLclampf green,
                    GLclampf blue, GLclampf alpha )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glClearColor" );
      return;
   }

   ctx->Color.ClearColor[0] = CLAMP( red, 0.0F, 1.0F );
   ctx->Color.ClearColor[1] = CLAMP( green, 0.0F, 1.0F );
   ctx->Color.ClearColor[2] = CLAMP( blue, 0.0F, 1.0F );
   ctx->Color.ClearColor[3] = CLAMP( alpha, 0.0F, 1.0F );

   if (ctx->Visual->RGBAflag) {
      GLubyte r = (GLint) (ctx->Color.ClearColor[0] * ctx->Visual->RedScale);
      GLubyte g = (GLint) (ctx->Color.ClearColor[1] * ctx->Visual->GreenScale);
      GLubyte b = (GLint) (ctx->Color.ClearColor[2] * ctx->Visual->BlueScale);
      GLubyte a = (GLint) (ctx->Color.ClearColor[3] * ctx->Visual->AlphaScale);
      (*ctx->Driver.ClearColor)( ctx, r, g, b, a );
   }
}
