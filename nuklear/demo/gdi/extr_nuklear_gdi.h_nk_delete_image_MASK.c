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
struct TYPE_2__ {scalar_t__ id; int /*<<< orphan*/  ptr; } ;
struct nk_image {TYPE_1__ handle; } ;
typedef  int /*<<< orphan*/  HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nk_image*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct nk_image * image)
{
    if (image && image->handle.id != 0)
    {
        HBITMAP hbm = (HBITMAP)image->handle.ptr;
        FUNC0(hbm);
        FUNC1(image, 0, sizeof(struct nk_image));
    }
}