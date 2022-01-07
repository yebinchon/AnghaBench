
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int indx; } ;
typedef TYPE_1__ SStreamParseFunc ;
typedef int RListIter ;
typedef int RList ;


 scalar_t__ r_list_iter_get (int *) ;
 scalar_t__ r_list_iter_next (int *) ;
 int * r_list_iterator (int *) ;

__attribute__((used)) static void find_indx_in_list(RList *l, int index, SStreamParseFunc **res) {
 SStreamParseFunc *stream_parse_func = 0;
 RListIter *it = 0;

 *res = 0;
 it = r_list_iterator (l);
 while (r_list_iter_next (it)) {
  stream_parse_func = (SStreamParseFunc *) r_list_iter_get (it);
  if (index == stream_parse_func->indx) {
   *res = stream_parse_func;
   return;
  }
 }
}
