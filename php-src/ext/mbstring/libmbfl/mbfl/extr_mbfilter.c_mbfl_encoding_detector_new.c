
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mbfl_identify_filter ;
struct TYPE_4__ {int filter_list_size; int strict; int ** filter_list; } ;
typedef TYPE_1__ mbfl_encoding_detector ;
typedef int mbfl_encoding ;


 scalar_t__ mbfl_calloc (int,int) ;
 int mbfl_free (TYPE_1__*) ;
 int * mbfl_identify_filter_new2 (int const*) ;
 scalar_t__ mbfl_malloc (int) ;

mbfl_encoding_detector *
mbfl_encoding_detector_new(const mbfl_encoding **elist, int elistsz, int strict)
{
 mbfl_encoding_detector *identd;

 int i, num;
 mbfl_identify_filter *filter;

 if (elist == ((void*)0) || elistsz <= 0) {
  return ((void*)0);
 }


 identd = (mbfl_encoding_detector*)mbfl_malloc(sizeof(mbfl_encoding_detector));
 if (identd == ((void*)0)) {
  return ((void*)0);
 }
 identd->filter_list = (mbfl_identify_filter **)mbfl_calloc(elistsz, sizeof(mbfl_identify_filter *));
 if (identd->filter_list == ((void*)0)) {
  mbfl_free(identd);
  return ((void*)0);
 }


 i = 0;
 num = 0;
 while (i < elistsz) {
  filter = mbfl_identify_filter_new2(elist[i]);
  if (filter != ((void*)0)) {
   identd->filter_list[num] = filter;
   num++;
  }
  i++;
 }
 identd->filter_list_size = num;


 identd->strict = strict;

 return identd;
}
