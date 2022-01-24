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
typedef  int /*<<< orphan*/  stbi__context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(stbi__context *s, int *x, int *y, int *comp)
{
    int tga_w, tga_h, tga_comp;
    int sz;
    FUNC1(s);                   // discard Offset
    sz = FUNC1(s);              // color type
    if( sz > 1 ) {
        FUNC2(s);
        return 0;      // only RGB or indexed allowed
    }
    sz = FUNC1(s);              // image type
    // only RGB or grey allowed, +/- RLE
    if ((sz != 1) && (sz != 2) && (sz != 3) && (sz != 9) && (sz != 10) && (sz != 11)) return 0;
    FUNC3(s,9);
    tga_w = FUNC0(s);
    if( tga_w < 1 ) {
        FUNC2(s);
        return 0;   // test width
    }
    tga_h = FUNC0(s);
    if( tga_h < 1 ) {
        FUNC2(s);
        return 0;   // test height
    }
    sz = FUNC1(s);               // bits per pixel
    // only RGB or RGBA or grey allowed
    if ((sz != 8) && (sz != 16) && (sz != 24) && (sz != 32)) {
        FUNC2(s);
        return 0;
    }
    tga_comp = sz;
    if (x) *x = tga_w;
    if (y) *y = tga_h;
    if (comp) *comp = tga_comp / 8;
    return 1;                   // seems to have passed everything
}