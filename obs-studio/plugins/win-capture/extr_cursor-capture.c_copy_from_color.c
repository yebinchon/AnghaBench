
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef long uint32_t ;
struct TYPE_6__ {int bmBitsPixel; long bmHeight; long bmWidth; } ;
struct TYPE_5__ {int hbmMask; int hbmColor; } ;
typedef TYPE_1__ ICONINFO ;
typedef TYPE_2__ BITMAP ;


 int apply_mask (int *,int *,long) ;
 int bfree (int *) ;
 int bitmap_has_alpha (int *,long) ;
 int * get_bitmap_data (int ,TYPE_2__*) ;

__attribute__((used)) static inline uint8_t *copy_from_color(ICONINFO *ii, uint32_t *width,
           uint32_t *height)
{
 BITMAP bmp_color;
 BITMAP bmp_mask;
 uint8_t *color;
 uint8_t *mask;

 color = get_bitmap_data(ii->hbmColor, &bmp_color);
 if (!color) {
  return ((void*)0);
 }

 if (bmp_color.bmBitsPixel < 32) {
  bfree(color);
  return ((void*)0);
 }

 mask = get_bitmap_data(ii->hbmMask, &bmp_mask);
 if (mask) {
  long pixels = bmp_color.bmHeight * bmp_color.bmWidth;

  if (!bitmap_has_alpha(color, pixels))
   apply_mask(color, mask, pixels);

  bfree(mask);
 }

 *width = bmp_color.bmWidth;
 *height = bmp_color.bmHeight;
 return color;
}
