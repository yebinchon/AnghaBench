
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* gdImagePtr ;
typedef int gdFixed ;
struct TYPE_5__ {int ** pixels; int ** tpixels; scalar_t__ trueColor; scalar_t__ sy; scalar_t__ sx; } ;


 unsigned long MAX (int,unsigned int const) ;
 int colorIndex2RGBA (int ) ;
 TYPE_1__* gdImageCreateTrueColor (unsigned long const,unsigned long const) ;
 int gd_ftofx (float const) ;
 long gd_fxtoi (int const) ;
 int gd_itofx (unsigned int) ;
 int gd_mulfx (int const,int const) ;

gdImagePtr gdImageScaleNearestNeighbour(gdImagePtr im, const unsigned int width, const unsigned int height)
{
 const unsigned long new_width = MAX(1, width);
 const unsigned long new_height = MAX(1, height);
 const float dx = (float)im->sx / (float)new_width;
 const float dy = (float)im->sy / (float)new_height;
 const gdFixed f_dx = gd_ftofx(dx);
 const gdFixed f_dy = gd_ftofx(dy);

 gdImagePtr dst_img;
 unsigned long dst_offset_x;
 unsigned long dst_offset_y = 0;
 unsigned int i;

 if (new_width == 0 || new_height == 0) {
  return ((void*)0);
 }

 dst_img = gdImageCreateTrueColor(new_width, new_height);

 if (dst_img == ((void*)0)) {
  return ((void*)0);
 }

 for (i=0; i<new_height; i++) {
  unsigned int j;
  dst_offset_x = 0;
  if (im->trueColor) {
   for (j=0; j<new_width; j++) {
    const gdFixed f_i = gd_itofx(i);
    const gdFixed f_j = gd_itofx(j);
    const gdFixed f_a = gd_mulfx(f_i, f_dy);
    const gdFixed f_b = gd_mulfx(f_j, f_dx);
    const long m = gd_fxtoi(f_a);
    const long n = gd_fxtoi(f_b);

    dst_img->tpixels[dst_offset_y][dst_offset_x++] = im->tpixels[m][n];
   }
  } else {
   for (j=0; j<new_width; j++) {
    const gdFixed f_i = gd_itofx(i);
    const gdFixed f_j = gd_itofx(j);
    const gdFixed f_a = gd_mulfx(f_i, f_dy);
    const gdFixed f_b = gd_mulfx(f_j, f_dx);
    const long m = gd_fxtoi(f_a);
    const long n = gd_fxtoi(f_b);

    dst_img->tpixels[dst_offset_y][dst_offset_x++] = colorIndex2RGBA(im->pixels[m][n]);
   }
  }
  dst_offset_y++;
 }
 return dst_img;
}
