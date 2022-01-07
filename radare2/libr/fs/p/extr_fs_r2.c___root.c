
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ path; scalar_t__ dir; } ;
typedef int RList ;
typedef int RFSRoot ;


 int append_file (int *,scalar_t__,char,int ,int ) ;
 int * r_list_newf (int *) ;
 TYPE_1__* routes ;

__attribute__((used)) static RList *__root(RFSRoot *root, const char *path) {
 RList *list = r_list_newf (((void*)0));
 if (!list) {
  return ((void*)0);
 }
 int i;
 for (i = 0; routes[i].path; i++) {
  char type = routes[i].dir? 'd': 'f';
  append_file (list, routes[i].path + 1, type, 0, 0);
 }
 return list;
}
