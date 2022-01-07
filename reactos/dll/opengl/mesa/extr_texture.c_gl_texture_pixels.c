
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__** Image; int (* SampleFunc ) (TYPE_4__*,int ,int const*,int const*,int const*,int const*,int *,int *,int *,int *) ;} ;
struct TYPE_8__ {int EnvMode; TYPE_4__* Current; } ;
struct TYPE_9__ {TYPE_2__ Texture; } ;
struct TYPE_7__ {int Format; } ;
typedef int GLuint ;
typedef int GLubyte ;
typedef int GLfloat ;
typedef TYPE_3__ GLcontext ;


 int PB_SIZE ;
 int apply_texture (TYPE_3__*,int ,int ,int ,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int stub1 (TYPE_4__*,int ,int const*,int const*,int const*,int const*,int *,int *,int *,int *) ;

void gl_texture_pixels( GLcontext *ctx, GLuint n,
                        const GLfloat s[], const GLfloat t[],
                        const GLfloat r[], const GLfloat lambda[],
                        GLubyte red[], GLubyte green[],
                        GLubyte blue[], GLubyte alpha[] )
{
   GLubyte tred[PB_SIZE];
   GLubyte tgreen[PB_SIZE];
   GLubyte tblue[PB_SIZE];
   GLubyte talpha[PB_SIZE];

   if (!ctx->Texture.Current || !ctx->Texture.Current->SampleFunc)
      return;


   (*ctx->Texture.Current->SampleFunc)( ctx->Texture.Current, n,
                                        s, t, r, lambda,
                                        tred, tgreen, tblue, talpha );

   apply_texture( ctx, n,
                  ctx->Texture.Current->Image[0]->Format,
                  ctx->Texture.EnvMode,
                  red, green, blue, alpha,
                  tred, tgreen, tblue, talpha );
}
