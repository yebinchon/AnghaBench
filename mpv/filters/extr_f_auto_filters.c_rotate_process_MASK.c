#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mp_frame {scalar_t__ type; struct mp_image* data; } ;
struct TYPE_6__ {scalar_t__ filter; struct mp_frame frame; } ;
struct rotate_priv {int prev_rotate; scalar_t__ prev_imgfmt; int target_rotate; TYPE_2__ sub; } ;
struct mp_stream_info {scalar_t__ rotate90; } ;
struct TYPE_5__ {int rotate; } ;
struct mp_image {scalar_t__ imgfmt; TYPE_1__ params; } ;
struct mp_filter {struct rotate_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_filter*,char*) ; 
 scalar_t__ MP_FRAME_VIDEO ; 
 int /*<<< orphan*/  FUNC1 (struct mp_filter*,char*) ; 
 int /*<<< orphan*/  MP_OUTPUT_CHAIN_VIDEO ; 
 int M_PI ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct mp_filter*,int /*<<< orphan*/ ,char*,char**) ; 
 struct mp_stream_info* FUNC4 (struct mp_filter*) ; 
 scalar_t__ FUNC5 (struct mp_frame) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 char* FUNC10 (int,char*,double) ; 

__attribute__((used)) static void FUNC11(struct mp_filter *f)
{
    struct rotate_priv *p = f->priv;

    if (!FUNC8(&p->sub))
        return;

    struct mp_frame frame = p->sub.frame;

    if (FUNC5(frame)) {
        FUNC6(&p->sub);
        return;
    }

    if (frame.type != MP_FRAME_VIDEO) {
        FUNC0(f, "video input required!\n");
        return;
    }

    struct mp_image *img = frame.data;

    if (img->params.rotate == p->prev_rotate &&
        img->imgfmt == p->prev_imgfmt)
    {
        img->params.rotate = p->target_rotate;
        FUNC6(&p->sub);
        return;
    }

    if (!FUNC7(&p->sub))
        return;

    FUNC2(!p->sub.filter);

    int rotate = p->prev_rotate = img->params.rotate;
    p->target_rotate = rotate;
    p->prev_imgfmt = img->imgfmt;

    struct mp_stream_info *info = FUNC4(f);
    if (rotate == 0 || (info && info->rotate90 && !(rotate % 90))) {
        FUNC6(&p->sub);
        return;
    }

    if (!FUNC9(img->imgfmt)) {
        FUNC0(f, "Video rotation with this format not supported\n");
        FUNC6(&p->sub);
        return;
    }

    double angle = rotate / 360.0 * M_PI * 2;
    char *args[] = {"angle", FUNC10(30, "%f", angle),
                    "ow", FUNC10(30, "rotw(%f)", angle),
                    "oh", FUNC10(30, "roth(%f)", angle),
                    NULL};
    p->sub.filter =
        FUNC3(f, MP_OUTPUT_CHAIN_VIDEO, "rotate", args);

    if (p->sub.filter) {
        FUNC1(f, "Inserting rotation filter.\n");
        p->target_rotate = 0;
    } else {
        FUNC0(f, "could not create rotation filter\n");
    }

    FUNC6(&p->sub);
}