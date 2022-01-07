
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RList ;
typedef int RCore ;


 int cmpstr ;
 int r_list_append (int *,char*) ;
 int * r_list_new () ;
 int r_list_sort (int *,int ) ;

RList *__sorted_list(RCore *core, char *menu[], int count) {
 RList *list = r_list_new ();
 int i;
 for (i = 0; i < count; i++) {
  if (menu[i]) {
   (void)r_list_append (list, menu[i]);
  }
 }
 r_list_sort (list, cmpstr);
 return list;
}
