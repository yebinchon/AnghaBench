#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sub_bitmap {int /*<<< orphan*/  dh; int /*<<< orphan*/  dw; int /*<<< orphan*/  stride; int /*<<< orphan*/  bitmap; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_2__ {int /*<<< orphan*/  color; } ;
struct mp_image {TYPE_1__ params; int /*<<< orphan*/  imgfmt; int /*<<< orphan*/ * stride; int /*<<< orphan*/ * planes; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMGFMT_BGR32 ; 
 int /*<<< orphan*/  IMGFMT_Y8 ; 
 int /*<<< orphan*/  SWS_BILINEAR ; 
 struct mp_image* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_image*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_image*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_image*,struct mp_image*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_image*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_image*,struct mp_image*) ; 

__attribute__((used)) static void FUNC6(struct sub_bitmap *sb, const struct mp_image *dst_format,
                          struct mp_image **out_sbi, struct mp_image **out_sba)
{
    struct mp_image sbisrc = {0};
    FUNC2(&sbisrc, IMGFMT_BGR32);
    FUNC1(&sbisrc, sb->w, sb->h);
    sbisrc.planes[0] = sb->bitmap;
    sbisrc.stride[0] = sb->stride;
    struct mp_image *sbisrc2 = FUNC0(IMGFMT_BGR32, sb->dw, sb->dh);
    struct mp_image *sba = FUNC0(IMGFMT_Y8, sb->dw, sb->dh);
    struct mp_image *sbi = FUNC0(dst_format->imgfmt, sb->dw, sb->dh);
    if (!sbisrc2 || !sba || !sbi) {
        FUNC4(sbisrc2);
        FUNC4(sba);
        FUNC4(sbi);
        return;
    }

    FUNC3(sbisrc2, &sbisrc, SWS_BILINEAR);
    FUNC5(sbisrc2, sba);

    sbi->params.color = dst_format->params.color;
    FUNC3(sbi, sbisrc2, SWS_BILINEAR);

    FUNC4(sbisrc2);

    *out_sbi = sbi;
    *out_sba = sba;
}