
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct va_image_formats {int num; TYPE_1__* entries; } ;
struct priv {struct va_image_formats* image_formats; } ;
struct TYPE_3__ {int const fourcc; } ;
typedef TYPE_1__ VAImageFormat ;


 int va_fourcc_from_imgfmt (int) ;

__attribute__((used)) static VAImageFormat *va_image_format_from_imgfmt(struct priv *ctx,
                                                  int imgfmt)
{
    struct va_image_formats *formats = ctx->image_formats;
    const int fourcc = va_fourcc_from_imgfmt(imgfmt);
    if (!formats || !formats->num || !fourcc)
        return ((void*)0);
    for (int i = 0; i < formats->num; i++) {
        if (formats->entries[i].fourcc == fourcc)
            return &formats->entries[i];
    }
    return ((void*)0);
}
