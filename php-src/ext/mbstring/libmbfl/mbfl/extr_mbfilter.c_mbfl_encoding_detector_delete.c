
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filter_list_size; int * filter_list; } ;
typedef TYPE_1__ mbfl_encoding_detector ;


 int mbfl_free (void*) ;
 int mbfl_identify_filter_delete (int ) ;

void
mbfl_encoding_detector_delete(mbfl_encoding_detector *identd)
{
 int i;

 if (identd != ((void*)0)) {
  if (identd->filter_list != ((void*)0)) {
   i = identd->filter_list_size;
   while (i > 0) {
    i--;
    mbfl_identify_filter_delete(identd->filter_list[i]);
   }
   mbfl_free((void *)identd->filter_list);
  }
  mbfl_free((void *)identd);
 }
}
