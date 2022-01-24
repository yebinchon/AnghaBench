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
struct TYPE_2__ {scalar_t__ image_id; } ;
struct va_surface {scalar_t__ id; int /*<<< orphan*/  display; TYPE_1__ image; } ;

/* Variables and functions */
 scalar_t__ VA_INVALID_ID ; 
 int /*<<< orphan*/  FUNC0 (struct va_surface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int) ; 

__attribute__((used)) static void FUNC3(void *arg)
{
    struct va_surface *surface = arg;

    if (surface->id != VA_INVALID_ID) {
        if (surface->image.image_id != VA_INVALID_ID)
            FUNC1(surface->display, surface->image.image_id);
        FUNC2(surface->display, &surface->id, 1);
    }

    FUNC0(surface);
}