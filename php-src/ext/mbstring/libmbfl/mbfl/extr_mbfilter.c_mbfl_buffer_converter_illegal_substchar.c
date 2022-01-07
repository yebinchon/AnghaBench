
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* filter1; TYPE_1__* filter2; } ;
typedef TYPE_3__ mbfl_buffer_converter ;
struct TYPE_6__ {int illegal_substchar; } ;
struct TYPE_5__ {int illegal_substchar; } ;



int
mbfl_buffer_converter_illegal_substchar(mbfl_buffer_converter *convd, int substchar)
{
 if (convd != ((void*)0)) {
  if (convd->filter2 != ((void*)0)) {
   convd->filter2->illegal_substchar = substchar;
  } else if (convd->filter1 != ((void*)0)) {
   convd->filter1->illegal_substchar = substchar;
  } else {
   return 0;
  }
 }

 return 1;
}
