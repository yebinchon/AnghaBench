
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* filter2; TYPE_1__* filter1; } ;
typedef TYPE_3__ mbfl_buffer_converter ;
struct TYPE_6__ {scalar_t__ num_illegalchar; } ;
struct TYPE_5__ {scalar_t__ num_illegalchar; } ;



size_t mbfl_buffer_illegalchars(mbfl_buffer_converter *convd)
{
 size_t num_illegalchars = 0;

 if (convd == ((void*)0)) {
  return 0;
 }

 if (convd->filter1 != ((void*)0)) {
  num_illegalchars += convd->filter1->num_illegalchar;
 }

 if (convd->filter2 != ((void*)0)) {
  num_illegalchars += convd->filter2->num_illegalchar;
 }

 return num_illegalchars;
}
