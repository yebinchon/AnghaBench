
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned char* val; size_t len; } ;
typedef TYPE_1__ mbfl_string ;
struct TYPE_8__ {scalar_t__ flag; int (* filter_function ) (unsigned char,TYPE_2__*) ;} ;
typedef TYPE_2__ mbfl_identify_filter ;
struct TYPE_9__ {int filter_list_size; TYPE_2__** filter_list; } ;
typedef TYPE_3__ mbfl_encoding_detector ;


 int stub1 (unsigned char,TYPE_2__*) ;

int
mbfl_encoding_detector_feed(mbfl_encoding_detector *identd, mbfl_string *string)
{
 int res = 0;

 if (identd != ((void*)0) && string != ((void*)0) && string->val != ((void*)0)) {
  int num = identd->filter_list_size;
  size_t n = string->len;
  unsigned char *p = string->val;
  int bad = 0;
  while (n > 0) {
   int i;
   for (i = 0; i < num; i++) {
    mbfl_identify_filter *filter = identd->filter_list[i];
    if (!filter->flag) {
     (*filter->filter_function)(*p, filter);
     if (filter->flag) {
      bad++;
     }
    }
   }
   if ((num - 1) <= bad) {
    res = 1;
    break;
   }
   p++;
   n--;
  }
 }

 return res;
}
