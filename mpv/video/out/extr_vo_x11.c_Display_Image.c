
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vo {TYPE_1__* x11; int dheight; int dwidth; } ;
struct TYPE_4__ {int y0; int x0; } ;
struct priv {size_t current_buf; int reset_view; int dst_h; int dst_w; TYPE_2__ dst; int gc; scalar_t__ Shmem_Flag; int ** myximage; struct vo* vo; } ;
typedef int XImage ;
struct TYPE_3__ {int window; int display; int ShmCompletionWaitCount; } ;


 int True ;
 int XFillRectangle (int ,int ,int ,int ,int ,int ,int ) ;
 int XPutImage (int ,int ,int ,int *,int ,int ,int ,int ,int ,int ) ;
 int XShmPutImage (int ,int ,int ,int *,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void Display_Image(struct priv *p, XImage *myximage)
{
    struct vo *vo = p->vo;

    XImage *x_image = p->myximage[p->current_buf];

    if (p->reset_view) {
        XFillRectangle(vo->x11->display, vo->x11->window, p->gc, 0, 0, vo->dwidth, vo->dheight);
        p->reset_view = 0;
    }

    if (p->Shmem_Flag) {
        XShmPutImage(vo->x11->display, vo->x11->window, p->gc, x_image,
                     0, 0, p->dst.x0, p->dst.y0, p->dst_w, p->dst_h,
                     True);
        vo->x11->ShmCompletionWaitCount++;
    } else {
        XPutImage(vo->x11->display, vo->x11->window, p->gc, x_image,
                  0, 0, p->dst.x0, p->dst.y0, p->dst_w, p->dst_h);
    }
}
