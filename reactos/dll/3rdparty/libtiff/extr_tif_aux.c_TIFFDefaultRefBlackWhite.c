
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float* td_refblackwhite; scalar_t__ td_photometric; long td_bitspersample; } ;
typedef TYPE_1__ TIFFDirectory ;


 scalar_t__ PHOTOMETRIC_YCBCR ;
 scalar_t__ _TIFFmalloc (int) ;

__attribute__((used)) static int
TIFFDefaultRefBlackWhite(TIFFDirectory* td)
{
 int i;

        td->td_refblackwhite = (float *)_TIFFmalloc(6*sizeof (float));
 if (td->td_refblackwhite == ((void*)0))
  return 0;
        if (td->td_photometric == PHOTOMETRIC_YCBCR) {




  td->td_refblackwhite[0] = 0.0F;
  td->td_refblackwhite[1] = td->td_refblackwhite[3] =
   td->td_refblackwhite[5] = 255.0F;
  td->td_refblackwhite[2] = td->td_refblackwhite[4] = 128.0F;
 } else {



  for (i = 0; i < 3; i++) {
      td->td_refblackwhite[2*i+0] = 0;
      td->td_refblackwhite[2*i+1] =
       (float)((1L<<td->td_bitspersample)-1L);
  }
 }
 return 1;
}
