#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xvctx {int Shmem_Flag; int /*<<< orphan*/  image_height; TYPE_1__** xvimage; int /*<<< orphan*/  xv_format; int /*<<< orphan*/  xv_port; TYPE_2__* Shminfo; int /*<<< orphan*/  image_width; } ;
struct vo_x11_state {int /*<<< orphan*/  display; scalar_t__ ShmCompletionEvent; scalar_t__ display_is_local; } ;
struct vo {struct vo_x11_state* x11; struct xvctx* priv; } ;
struct mp_image {int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_4__ {void* data; int width; int height; int /*<<< orphan*/  data_size; } ;
typedef  TYPE_1__ XvImage ;
struct TYPE_5__ {void* shmaddr; int /*<<< orphan*/  shmid; int /*<<< orphan*/  readOnly; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  False ; 
 int IPC_CREAT ; 
 int /*<<< orphan*/  IPC_PRIVATE ; 
 int /*<<< orphan*/  IPC_RMID ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,char*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*,char*) ; 
 scalar_t__ ShmCompletion ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,TYPE_2__*) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 struct mp_image FUNC10 (struct vo*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mp_image*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mp_image*,int,int) ; 
 void* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC16(struct vo *vo, int foo)
{
    struct xvctx *ctx = vo->priv;
    struct vo_x11_state *x11 = vo->x11;
    // align it for faster OSD rendering (draw_bmp.c swscale usage)
    int aligned_w = FUNC0(ctx->image_width, 32);
    // round up the height to next chroma boundary too
    int aligned_h = FUNC0(ctx->image_height, 2);
    if (x11->display_is_local && FUNC5(x11->display)) {
        ctx->Shmem_Flag = 1;
        x11->ShmCompletionEvent = FUNC4(x11->display)
                                + ShmCompletion;
    } else {
        ctx->Shmem_Flag = 0;
        FUNC2(vo, "Shared memory not supported\nReverting to normal Xv.\n");
    }
    if (ctx->Shmem_Flag) {
        ctx->xvimage[foo] =
            (XvImage *) FUNC8(x11->display, ctx->xv_port,
                                         ctx->xv_format, NULL,
                                         aligned_w, aligned_h,
                                         &ctx->Shminfo[foo]);
        if (!ctx->xvimage[foo])
            return false;

        ctx->Shminfo[foo].shmid = FUNC15(IPC_PRIVATE,
                                         ctx->xvimage[foo]->data_size,
                                         IPC_CREAT | 0777);
        ctx->Shminfo[foo].shmaddr = FUNC13(ctx->Shminfo[foo].shmid, 0, 0);
        if (ctx->Shminfo[foo].shmaddr == (void *)-1)
            return false;
        ctx->Shminfo[foo].readOnly = False;

        ctx->xvimage[foo]->data = ctx->Shminfo[foo].shmaddr;
        FUNC3(x11->display, &ctx->Shminfo[foo]);
        FUNC6(x11->display, False);
        FUNC14(ctx->Shminfo[foo].shmid, IPC_RMID, 0);
    } else {
        ctx->xvimage[foo] =
            (XvImage *) FUNC7(x11->display, ctx->xv_port,
                                      ctx->xv_format, NULL, aligned_w,
                                      aligned_h);
        if (!ctx->xvimage[foo])
            return false;
        ctx->xvimage[foo]->data = FUNC9(ctx->xvimage[foo]->data_size);
        if (!ctx->xvimage[foo]->data)
            return false;
        FUNC6(x11->display, False);
    }

    if ((ctx->xvimage[foo]->width < aligned_w) ||
        (ctx->xvimage[foo]->height < aligned_h)) {
        FUNC1(vo, "Got XvImage with too small size: %ux%u (expected %ux%u)\n",
               ctx->xvimage[foo]->width, ctx->xvimage[foo]->height,
               aligned_w, ctx->image_height);
        return false;
    }

    struct mp_image img = FUNC10(vo, foo);
    FUNC12(&img, aligned_w, aligned_h);
    FUNC11(&img, 0, 0, img.w, img.h);
    return true;
}