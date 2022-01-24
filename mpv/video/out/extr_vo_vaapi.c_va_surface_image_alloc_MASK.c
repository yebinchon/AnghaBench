#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ fourcc; } ;
struct TYPE_9__ {scalar_t__ image_id; scalar_t__ width; scalar_t__ height; TYPE_1__ format; } ;
struct va_surface {scalar_t__ w; scalar_t__ h; int is_derived; TYPE_4__ image; int /*<<< orphan*/  ctx; int /*<<< orphan*/ * display; int /*<<< orphan*/  id; } ;
typedef  scalar_t__ VAStatus ;
struct TYPE_8__ {scalar_t__ fourcc; } ;
typedef  TYPE_2__ VAImageFormat ;
typedef  int /*<<< orphan*/  VADisplay ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ VA_INVALID_ID ; 
 scalar_t__ VA_STATUS_ERROR_OPERATION_FAILED ; 
 scalar_t__ VA_STATUS_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,scalar_t__,scalar_t__,TYPE_4__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct va_surface*) ; 

__attribute__((used)) static int FUNC6(struct va_surface *p, VAImageFormat *format)
{
    VADisplay *display = p->display;

    if (p->image.image_id != VA_INVALID_ID &&
        p->image.format.fourcc == format->fourcc)
        return 0;

    int r = 0;

    FUNC5(p);

    VAStatus status = FUNC3(display, p->id, &p->image);
    if (status == VA_STATUS_SUCCESS) {
        /* vaDeriveImage() is supported, check format */
        if (p->image.format.fourcc == format->fourcc &&
            p->image.width == p->w && p->image.height == p->h)
        {
            p->is_derived = true;
            FUNC1(p->ctx, "Using vaDeriveImage()\n");
        } else {
            FUNC4(p->display, p->image.image_id);
            status = VA_STATUS_ERROR_OPERATION_FAILED;
        }
    }
    if (status != VA_STATUS_SUCCESS) {
        p->image.image_id = VA_INVALID_ID;
        status = FUNC2(p->display, format, p->w, p->h, &p->image);
        if (!FUNC0(p->ctx, "vaCreateImage()")) {
            p->image.image_id = VA_INVALID_ID;
            r = -1;
        }
    }

    return r;
}