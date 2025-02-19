
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* j_decompress_ptr ;
struct TYPE_5__ {int num_components; scalar_t__ jpeg_color_space; TYPE_1__* comp_info; } ;
struct TYPE_4__ {int h_samp_factor; int v_samp_factor; } ;


 scalar_t__ JCS_CMYK ;
 scalar_t__ JCS_GRAYSCALE ;
 scalar_t__ JCS_YCCK ;
 int NUMSUBOPT ;
 int TJSAMP_422 ;
 int TJSAMP_440 ;
 int TJSAMP_GRAY ;
 int* pixelsize ;
 int* tjMCUHeight ;
 int* tjMCUWidth ;

__attribute__((used)) static int getSubsamp(j_decompress_ptr dinfo)
{
 int retval=-1, i, k;





 if(dinfo->num_components==1 && dinfo->jpeg_color_space==JCS_GRAYSCALE)
  return TJSAMP_GRAY;

  for (i = 0; i < NUMSUBOPT; i++) {
    if (dinfo->num_components == pixelsize[i] ||
        ((dinfo->jpeg_color_space == JCS_YCCK ||
          dinfo->jpeg_color_space == JCS_CMYK) &&
         pixelsize[i] == 3 && dinfo->num_components == 4)) {
      if (dinfo->comp_info[0].h_samp_factor == tjMCUWidth[i] / 8 &&
          dinfo->comp_info[0].v_samp_factor == tjMCUHeight[i] / 8) {
    int match=0;

        for (k = 1; k < dinfo->num_components; k++) {
     int href=1, vref=1;

          if ((dinfo->jpeg_color_space == JCS_YCCK ||
               dinfo->jpeg_color_space == JCS_CMYK) && k == 3) {
      href=tjMCUWidth[i]/8; vref=tjMCUHeight[i]/8;
     }
          if (dinfo->comp_info[k].h_samp_factor == href &&
              dinfo->comp_info[k].v_samp_factor == vref)
      match++;
    }
        if (match == dinfo->num_components - 1) {
     retval=i; break;
    }
   }


   if(dinfo->comp_info[0].h_samp_factor==2 &&
    dinfo->comp_info[0].v_samp_factor==2 &&
          (i == TJSAMP_422 || i == TJSAMP_440)) {
    int match=0;

        for (k = 1; k < dinfo->num_components; k++) {
     int href=tjMCUHeight[i]/8, vref=tjMCUWidth[i]/8;

          if ((dinfo->jpeg_color_space == JCS_YCCK ||
               dinfo->jpeg_color_space == JCS_CMYK) && k == 3) {
      href=vref=2;
     }
          if (dinfo->comp_info[k].h_samp_factor == href &&
              dinfo->comp_info[k].v_samp_factor == vref)
      match++;
    }
        if (match == dinfo->num_components - 1) {
     retval=i; break;
    }
   }
  }
 }
 return retval;
}
