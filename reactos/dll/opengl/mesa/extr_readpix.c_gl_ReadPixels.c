
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_16__ {int DrawBuffer; } ;
struct TYPE_15__ {int (* SetBuffer ) (TYPE_4__*,int ) ;} ;
struct TYPE_14__ {int ReadBuffer; } ;
struct TYPE_17__ {TYPE_3__ Color; TYPE_2__ Driver; TYPE_1__ Pixel; } ;
typedef int GLvoid ;
typedef int GLsizei ;
typedef int GLint ;
typedef int GLenum ;
typedef TYPE_4__ GLcontext ;
 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;






 scalar_t__ INSIDE_BEGIN_END (TYPE_4__*) ;
 int gl_error (TYPE_4__*,int ,char*) ;
 int read_color_pixels (TYPE_4__*,int ,int ,int ,int ,int,int,int *) ;
 int read_depth_pixels (TYPE_4__*,int ,int ,int ,int ,int,int *) ;
 int read_index_pixels (TYPE_4__*,int ,int ,int ,int ,int,int *) ;
 int read_stencil_pixels (TYPE_4__*,int ,int ,int ,int ,int,int *) ;
 int stub1 (TYPE_4__*,int ) ;
 int stub2 (TYPE_4__*,int ) ;

void gl_ReadPixels( GLcontext *ctx,
                    GLint x, GLint y, GLsizei width, GLsizei height,
      GLenum format, GLenum type, GLvoid *pixels )
{
    if (INSIDE_BEGIN_END(ctx))
    {
        gl_error(ctx, GL_INVALID_OPERATION, "glReadPixels");
        return;
    }

    (void) (*ctx->Driver.SetBuffer)(ctx, ctx->Pixel.ReadBuffer);

    switch (format)
    {
    case 136:
        read_index_pixels(ctx, x, y, width, height, type, pixels);
        break;
    case 128:
        read_stencil_pixels(ctx, x, y, width, height, type, pixels);
        break;
    case 135:
        read_depth_pixels(ctx, x, y, width, height, type, pixels);
        break;
    case 131:
    case 134:
    case 137:
    case 140:
    case 130:
    case 138:
    case 133:
    case 132:
    case 129:
    case 139:
        read_color_pixels(ctx, x, y, width, height, format, type, pixels);
        break;
    default:
        gl_error(ctx, GL_INVALID_ENUM, "glReadPixels(format)");
    }

    (void) (*ctx->Driver.SetBuffer)(ctx, ctx->Color.DrawBuffer);
}
