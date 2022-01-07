
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mp_vaapi_ctx {int display; } ;
typedef int VAStatus ;
struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ VAImage ;


 int CHECK_VA_STATUS (struct mp_vaapi_ctx*,char*) ;
 int vaUnmapBuffer (int ,int ) ;

__attribute__((used)) static bool va_image_unmap(struct mp_vaapi_ctx *ctx, VAImage *image)
{
    const VAStatus status = vaUnmapBuffer(ctx->display, image->buf);
    return CHECK_VA_STATUS(ctx, "vaUnmapBuffer()");
}
