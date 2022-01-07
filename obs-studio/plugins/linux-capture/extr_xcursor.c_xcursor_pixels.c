
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint_fast32_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int width; int height; int * pixels; } ;
typedef TYPE_1__ XFixesCursorImage ;


 scalar_t__* bmalloc (int) ;

__attribute__((used)) static uint32_t *xcursor_pixels(XFixesCursorImage *xc)
{
 uint_fast32_t size = xc->width * xc->height;
 uint32_t *pixels = bmalloc(size * sizeof(uint32_t));

 for (uint_fast32_t i = 0; i < size; ++i)
  pixels[i] = (uint32_t)xc->pixels[i];

 return pixels;
}
