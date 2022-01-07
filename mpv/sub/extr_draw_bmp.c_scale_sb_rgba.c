
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sub_bitmap {int dh; int dw; int stride; int bitmap; int h; int w; } ;
struct TYPE_2__ {int color; } ;
struct mp_image {TYPE_1__ params; int imgfmt; int * stride; int * planes; int member_0; } ;


 int IMGFMT_BGR32 ;
 int IMGFMT_Y8 ;
 int SWS_BILINEAR ;
 struct mp_image* mp_image_alloc (int ,int ,int ) ;
 int mp_image_set_size (struct mp_image*,int ,int ) ;
 int mp_image_setfmt (struct mp_image*,int ) ;
 int mp_image_swscale (struct mp_image*,struct mp_image*,int ) ;
 int talloc_free (struct mp_image*) ;
 int unpremultiply_and_split_BGR32 (struct mp_image*,struct mp_image*) ;

__attribute__((used)) static void scale_sb_rgba(struct sub_bitmap *sb, const struct mp_image *dst_format,
                          struct mp_image **out_sbi, struct mp_image **out_sba)
{
    struct mp_image sbisrc = {0};
    mp_image_setfmt(&sbisrc, IMGFMT_BGR32);
    mp_image_set_size(&sbisrc, sb->w, sb->h);
    sbisrc.planes[0] = sb->bitmap;
    sbisrc.stride[0] = sb->stride;
    struct mp_image *sbisrc2 = mp_image_alloc(IMGFMT_BGR32, sb->dw, sb->dh);
    struct mp_image *sba = mp_image_alloc(IMGFMT_Y8, sb->dw, sb->dh);
    struct mp_image *sbi = mp_image_alloc(dst_format->imgfmt, sb->dw, sb->dh);
    if (!sbisrc2 || !sba || !sbi) {
        talloc_free(sbisrc2);
        talloc_free(sba);
        talloc_free(sbi);
        return;
    }

    mp_image_swscale(sbisrc2, &sbisrc, SWS_BILINEAR);
    unpremultiply_and_split_BGR32(sbisrc2, sba);

    sbi->params.color = dst_format->params.color;
    mp_image_swscale(sbi, sbisrc2, SWS_BILINEAR);

    talloc_free(sbisrc2);

    *out_sbi = sbi;
    *out_sba = sba;
}
