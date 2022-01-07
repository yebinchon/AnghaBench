
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; int height; int* bitmap; } ;
typedef TYPE_1__ Wbmp ;


 int WBMP_BLACK ;
 int WBMP_WHITE ;
 int putmbi (int,void (*) (int,void*),void*) ;

int
writewbmp (Wbmp * wbmp, void (*putout) (int c, void *out), void *out)
{
  int row, col;
  int bitpos, octet;


  putout (0, out);
  putout (0, out);




  putmbi (wbmp->width, putout, out);
  putmbi (wbmp->height, putout, out);



  for (row = 0; row < wbmp->height; row++)
    {
      bitpos = 8;
      octet = 0;
      for (col = 0; col < wbmp->width; col++)
 {
   octet |= ((wbmp->bitmap[row * wbmp->width + col] == 1) ? WBMP_WHITE : WBMP_BLACK) << --bitpos;
   if (bitpos == 0)
     {
       bitpos = 8;
       putout (octet, out);
       octet = 0;
     }
 }
      if (bitpos != 8)
 putout (octet, out);

    }
  return (0);

}
