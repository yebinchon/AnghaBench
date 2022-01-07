
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ fourcc; } ;
struct TYPE_9__ {scalar_t__ image_id; scalar_t__ width; scalar_t__ height; TYPE_1__ format; } ;
struct va_surface {scalar_t__ w; scalar_t__ h; int is_derived; TYPE_4__ image; int ctx; int * display; int id; } ;
typedef scalar_t__ VAStatus ;
struct TYPE_8__ {scalar_t__ fourcc; } ;
typedef TYPE_2__ VAImageFormat ;
typedef int VADisplay ;


 int CHECK_VA_STATUS (int ,char*) ;
 int MP_TRACE (int ,char*) ;
 scalar_t__ VA_INVALID_ID ;
 scalar_t__ VA_STATUS_ERROR_OPERATION_FAILED ;
 scalar_t__ VA_STATUS_SUCCESS ;
 scalar_t__ vaCreateImage (int *,TYPE_2__*,scalar_t__,scalar_t__,TYPE_4__*) ;
 scalar_t__ vaDeriveImage (int *,int ,TYPE_4__*) ;
 int vaDestroyImage (int *,scalar_t__) ;
 int va_surface_image_destroy (struct va_surface*) ;

__attribute__((used)) static int va_surface_image_alloc(struct va_surface *p, VAImageFormat *format)
{
    VADisplay *display = p->display;

    if (p->image.image_id != VA_INVALID_ID &&
        p->image.format.fourcc == format->fourcc)
        return 0;

    int r = 0;

    va_surface_image_destroy(p);

    VAStatus status = vaDeriveImage(display, p->id, &p->image);
    if (status == VA_STATUS_SUCCESS) {

        if (p->image.format.fourcc == format->fourcc &&
            p->image.width == p->w && p->image.height == p->h)
        {
            p->is_derived = 1;
            MP_TRACE(p->ctx, "Using vaDeriveImage()\n");
        } else {
            vaDestroyImage(p->display, p->image.image_id);
            status = VA_STATUS_ERROR_OPERATION_FAILED;
        }
    }
    if (status != VA_STATUS_SUCCESS) {
        p->image.image_id = VA_INVALID_ID;
        status = vaCreateImage(p->display, format, p->w, p->h, &p->image);
        if (!CHECK_VA_STATUS(p->ctx, "vaCreateImage()")) {
            p->image.image_id = VA_INVALID_ID;
            r = -1;
        }
    }

    return r;
}
