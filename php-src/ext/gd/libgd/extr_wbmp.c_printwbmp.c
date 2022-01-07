
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; scalar_t__* bitmap; } ;
typedef TYPE_1__ Wbmp ;


 scalar_t__ WBMP_BLACK ;
 int putchar (char) ;

void
printwbmp (Wbmp * wbmp)
{
  int row, col;
  for (row = 0; row < wbmp->height; row++)
    {
      for (col = 0; col < wbmp->width; col++)
 {
   if (wbmp->bitmap[wbmp->width * row + col] == WBMP_BLACK)
     {
       putchar ('#');
     }
   else
     {
       putchar (' ');
     }
 }
      putchar ('\n');
    }
}
