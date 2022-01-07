
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int (* Vertex2f ) (TYPE_2__*,int ,int ) ;} ;
struct TYPE_13__ {TYPE_1__ Exec; } ;
typedef int GLfloat ;
typedef TYPE_2__ GLcontext ;


 int GL_INVALID_OPERATION ;
 int GL_QUADS ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_Begin (TYPE_2__*,int ) ;
 int gl_End (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;
 int stub1 (TYPE_2__*,int ,int ) ;
 int stub2 (TYPE_2__*,int ,int ) ;
 int stub3 (TYPE_2__*,int ,int ) ;
 int stub4 (TYPE_2__*,int ,int ) ;

void gl_Rectf( GLcontext *ctx, GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2 )
{






   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glRect" );
      return;
   }
   gl_Begin( ctx, GL_QUADS );
   (*ctx->Exec.Vertex2f)( ctx, x1, y1 );
   (*ctx->Exec.Vertex2f)( ctx, x2, y1 );
   (*ctx->Exec.Vertex2f)( ctx, x2, y2 );
   (*ctx->Exec.Vertex2f)( ctx, x1, y2 );
   gl_End( ctx );
}
