
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int bmHeight; int bmWidth; int bmBitsPixel; } ;
typedef int HBITMAP ;
typedef TYPE_1__ BITMAP ;


 int GetBitmapBits (int ,unsigned int,int *) ;
 scalar_t__ GetObject (int ,int,TYPE_1__*) ;
 int * bmalloc (unsigned int) ;

__attribute__((used)) static uint8_t *get_bitmap_data(HBITMAP hbmp, BITMAP *bmp)
{
 if (GetObject(hbmp, sizeof(*bmp), bmp) != 0) {
  uint8_t *output;
  unsigned int size =
   (bmp->bmHeight * bmp->bmWidth * bmp->bmBitsPixel) / 8;

  output = bmalloc(size);
  GetBitmapBits(hbmp, size, output);
  return output;
 }

 return ((void*)0);
}
