
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * encoding; int flag; int status; } ;
typedef TYPE_1__ mbfl_identify_filter ;
struct TYPE_5__ {int filter_list_size; TYPE_1__** filter_list; int strict; } ;
typedef TYPE_2__ mbfl_encoding_detector ;
typedef int mbfl_encoding ;



const mbfl_encoding *mbfl_encoding_detector_judge(mbfl_encoding_detector *identd)
{
 mbfl_identify_filter *filter;
 const mbfl_encoding *encoding = ((void*)0);
 int n;


 if (identd != ((void*)0)) {
  n = identd->filter_list_size - 1;
  while (n >= 0) {
   filter = identd->filter_list[n];
   if (!filter->flag) {
    if (!identd->strict || !filter->status) {
     encoding = filter->encoding;
    }
   }
   n--;
  }


  if (!encoding) {
   n = identd->filter_list_size - 1;
   while (n >= 0) {
    filter = identd->filter_list[n];
    if (!filter->flag) {
     encoding = filter->encoding;
    }
    n--;
    }
  }
 }

 return encoding;
}
