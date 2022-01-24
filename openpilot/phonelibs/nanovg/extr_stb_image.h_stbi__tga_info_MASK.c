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
 int FUNC4 (int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(stbi__context *s, int *x, int *y, int *comp)
{
    int tga_w, tga_h, tga_comp, tga_image_type, tga_bits_per_pixel, tga_colormap_bpp;
    int sz, tga_colormap_type;
    FUNC1(s);                   // discard Offset
    tga_colormap_type = FUNC1(s); // colormap type
    if( tga_colormap_type > 1 ) {
        FUNC2(s);
        return 0;      // only RGB or indexed allowed
    }
    tga_image_type = FUNC1(s); // image type
    if ( tga_colormap_type == 1 ) { // colormapped (paletted) image
        if (tga_image_type != 1 && tga_image_type != 9) {
            FUNC2(s);
            return 0;
        }
        FUNC3(s,4);       // skip index of first colormap entry and number of entries
        sz = FUNC1(s);    //   check bits per palette color entry
        if ( (sz != 8) && (sz != 15) && (sz != 16) && (sz != 24) && (sz != 32) ) {
            FUNC2(s);
            return 0;
        }
        FUNC3(s,4);       // skip image x and y origin
        tga_colormap_bpp = sz;
    } else { // "normal" image w/o colormap - only RGB or grey allowed, +/- RLE
        if ( (tga_image_type != 2) && (tga_image_type != 3) && (tga_image_type != 10) && (tga_image_type != 11) ) {
            FUNC2(s);
            return 0; // only RGB or grey allowed, +/- RLE
        }
        FUNC3(s,9); // skip colormap specification and image x/y origin
        tga_colormap_bpp = 0;
    }
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
    tga_bits_per_pixel = FUNC1(s); // bits per pixel
    FUNC1(s); // ignore alpha bits
    if (tga_colormap_bpp != 0) {
        if((tga_bits_per_pixel != 8) && (tga_bits_per_pixel != 16)) {
            // when using a colormap, tga_bits_per_pixel is the size of the indexes
            // I don't think anything but 8 or 16bit indexes makes sense
            FUNC2(s);
            return 0;
        }
        tga_comp = FUNC4(tga_colormap_bpp, 0, NULL);
    } else {
        tga_comp = FUNC4(tga_bits_per_pixel, (tga_image_type == 3) || (tga_image_type == 11), NULL);
    }
    if(!tga_comp) {
      FUNC2(s);
      return 0;
    }
    if (x) *x = tga_w;
    if (y) *y = tga_h;
    if (comp) *comp = tga_comp;
    return 1;                   // seems to have passed everything
}