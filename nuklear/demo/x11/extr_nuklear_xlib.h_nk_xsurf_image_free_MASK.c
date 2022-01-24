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
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* ptr; } ;
struct nk_image {TYPE_1__ handle; } ;
struct TYPE_7__ {int /*<<< orphan*/  dpy; } ;
typedef  TYPE_2__ XSurface ;
struct TYPE_8__ {int /*<<< orphan*/  clipMaskGC; int /*<<< orphan*/  clipMask; int /*<<< orphan*/  ximage; } ;
typedef  TYPE_3__ XImageWithAlpha ;
struct TYPE_9__ {TYPE_2__* surf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_4__ xlib ; 

void
FUNC4(struct nk_image* image)
{
    XSurface *surf = xlib.surf;
    XImageWithAlpha *aimage = image->handle.ptr;
    if (!aimage) return;
    FUNC0(aimage->ximage);
    FUNC2(surf->dpy, aimage->clipMask);
    FUNC1(surf->dpy, aimage->clipMaskGC);
    FUNC3(aimage);
}