#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nk_image {void* w; void* h; } ;
typedef  void* UINT ;
typedef  int /*<<< orphan*/  GpImage ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void**) ; 
 struct nk_image FUNC2 (void*) ; 

__attribute__((used)) static struct nk_image
FUNC3(GpImage *image) {
    struct nk_image img;
    UINT uwidth, uheight;
    img = FUNC2( (void*)image );
    FUNC0(image, &uheight);
    FUNC1(image, &uwidth);
    img.h = uheight;
    img.w = uwidth;
    return img;
}