
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_4__ {int type; int time; int size; } ;
typedef int RList ;
typedef TYPE_1__ RFSFile ;


 TYPE_1__* r_fs_file_new (int *,char const*) ;
 int r_list_append (int *,TYPE_1__*) ;

__attribute__((used)) static void append_file(RList *list, const char *name, int type, int time, ut64 size) {
 if (!list || !name || !*name) {
  return;
 }
 RFSFile *fsf = r_fs_file_new (((void*)0), name);
 if (!fsf) {
  return;
 }
 fsf->type = type;
 fsf->time = time;
 fsf->size = size;
 r_list_append (list, fsf);
}
