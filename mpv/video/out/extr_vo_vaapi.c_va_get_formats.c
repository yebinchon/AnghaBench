
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct va_image_formats {int num; TYPE_1__* entries; } ;
struct priv {struct va_image_formats* image_formats; int display; } ;
typedef int VAStatus ;
struct TYPE_3__ {int fourcc; } ;


 int CHECK_VA_STATUS (struct priv*,char*) ;
 int MP_VERBOSE (struct priv*,char*,int) ;
 int VAImageFormat ;
 struct va_image_formats* formats ;
 int mp_tag_str (int ) ;
 TYPE_1__* talloc_array (struct va_image_formats*,int ,int) ;
 struct va_image_formats* talloc_ptrtype (struct priv*,int ) ;
 int vaMaxNumImageFormats (int ) ;
 int vaQueryImageFormats (int ,TYPE_1__*,int*) ;

__attribute__((used)) static void va_get_formats(struct priv *ctx)
{
    struct va_image_formats *formats = talloc_ptrtype(ctx, formats);
    formats->num = vaMaxNumImageFormats(ctx->display);
    formats->entries = talloc_array(formats, VAImageFormat, formats->num);
    VAStatus status = vaQueryImageFormats(ctx->display, formats->entries,
                                          &formats->num);
    if (!CHECK_VA_STATUS(ctx, "vaQueryImageFormats()"))
        return;
    MP_VERBOSE(ctx, "%d image formats available:\n", formats->num);
    for (int i = 0; i < formats->num; i++)
        MP_VERBOSE(ctx, "  %s\n", mp_tag_str(formats->entries[i].fourcc));
    ctx->image_formats = formats;
}
