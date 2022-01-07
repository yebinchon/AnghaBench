
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xvctx {int Shmem_Flag; int image_height; TYPE_1__** xvimage; int xv_format; int xv_port; TYPE_2__* Shminfo; int image_width; } ;
struct vo_x11_state {int display; scalar_t__ ShmCompletionEvent; scalar_t__ display_is_local; } ;
struct vo {struct vo_x11_state* x11; struct xvctx* priv; } ;
struct mp_image {int h; int w; } ;
struct TYPE_4__ {void* data; int width; int height; int data_size; } ;
typedef TYPE_1__ XvImage ;
struct TYPE_5__ {void* shmaddr; int shmid; int readOnly; } ;


 int FFALIGN (int ,int) ;
 int False ;
 int IPC_CREAT ;
 int IPC_PRIVATE ;
 int IPC_RMID ;
 int MP_ERR (struct vo*,char*,int,int,int,int ) ;
 int MP_INFO (struct vo*,char*) ;
 scalar_t__ ShmCompletion ;
 int XShmAttach (int ,TYPE_2__*) ;
 scalar_t__ XShmGetEventBase (int ) ;
 scalar_t__ XShmQueryExtension (int ) ;
 int XSync (int ,int ) ;
 scalar_t__ XvCreateImage (int ,int ,int ,int *,int,int) ;
 scalar_t__ XvShmCreateImage (int ,int ,int ,int *,int,int,TYPE_2__*) ;
 void* av_malloc (int ) ;
 struct mp_image get_xv_buffer (struct vo*,int) ;
 int mp_image_clear (struct mp_image*,int ,int ,int ,int ) ;
 int mp_image_set_size (struct mp_image*,int,int) ;
 void* shmat (int ,int ,int ) ;
 int shmctl (int ,int ,int ) ;
 int shmget (int ,int ,int) ;

__attribute__((used)) static bool allocate_xvimage(struct vo *vo, int foo)
{
    struct xvctx *ctx = vo->priv;
    struct vo_x11_state *x11 = vo->x11;

    int aligned_w = FFALIGN(ctx->image_width, 32);

    int aligned_h = FFALIGN(ctx->image_height, 2);
    if (x11->display_is_local && XShmQueryExtension(x11->display)) {
        ctx->Shmem_Flag = 1;
        x11->ShmCompletionEvent = XShmGetEventBase(x11->display)
                                + ShmCompletion;
    } else {
        ctx->Shmem_Flag = 0;
        MP_INFO(vo, "Shared memory not supported\nReverting to normal Xv.\n");
    }
    if (ctx->Shmem_Flag) {
        ctx->xvimage[foo] =
            (XvImage *) XvShmCreateImage(x11->display, ctx->xv_port,
                                         ctx->xv_format, ((void*)0),
                                         aligned_w, aligned_h,
                                         &ctx->Shminfo[foo]);
        if (!ctx->xvimage[foo])
            return 0;

        ctx->Shminfo[foo].shmid = shmget(IPC_PRIVATE,
                                         ctx->xvimage[foo]->data_size,
                                         IPC_CREAT | 0777);
        ctx->Shminfo[foo].shmaddr = shmat(ctx->Shminfo[foo].shmid, 0, 0);
        if (ctx->Shminfo[foo].shmaddr == (void *)-1)
            return 0;
        ctx->Shminfo[foo].readOnly = False;

        ctx->xvimage[foo]->data = ctx->Shminfo[foo].shmaddr;
        XShmAttach(x11->display, &ctx->Shminfo[foo]);
        XSync(x11->display, False);
        shmctl(ctx->Shminfo[foo].shmid, IPC_RMID, 0);
    } else {
        ctx->xvimage[foo] =
            (XvImage *) XvCreateImage(x11->display, ctx->xv_port,
                                      ctx->xv_format, ((void*)0), aligned_w,
                                      aligned_h);
        if (!ctx->xvimage[foo])
            return 0;
        ctx->xvimage[foo]->data = av_malloc(ctx->xvimage[foo]->data_size);
        if (!ctx->xvimage[foo]->data)
            return 0;
        XSync(x11->display, False);
    }

    if ((ctx->xvimage[foo]->width < aligned_w) ||
        (ctx->xvimage[foo]->height < aligned_h)) {
        MP_ERR(vo, "Got XvImage with too small size: %ux%u (expected %ux%u)\n",
               ctx->xvimage[foo]->width, ctx->xvimage[foo]->height,
               aligned_w, ctx->image_height);
        return 0;
    }

    struct mp_image img = get_xv_buffer(vo, foo);
    mp_image_set_size(&img, aligned_w, aligned_h);
    mp_image_clear(&img, 0, 0, img.w, img.h);
    return 1;
}
