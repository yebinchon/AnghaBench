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
struct rawfb_image {int dummy; } ;
struct nk_color {int a; unsigned char r; unsigned char g; unsigned char b; } ;

/* Variables and functions */
 struct nk_color FUNC0 (struct rawfb_image const*,int const,int const) ; 
 int /*<<< orphan*/  FUNC1 (struct rawfb_image const*,int const,int const,struct nk_color) ; 

__attribute__((used)) static void
FUNC2(const struct rawfb_image *img,
    const int x0, const int y0, struct nk_color col)
{
    struct nk_color col2;
    unsigned char inv_a;
    if (col.a == 0)
        return;

    inv_a = 0xff - col.a;
    col2 = FUNC0(img, x0, y0);
    col.r = (col.r * col.a + col2.r * inv_a) >> 8;
    col.g = (col.g * col.a + col2.g * inv_a) >> 8;
    col.b = (col.b * col.a + col2.b * inv_a) >> 8;
    FUNC1(img, x0, y0, col);
}