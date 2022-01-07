
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_11__ {void* size; int p; int * data; int * ptr; } ;
struct TYPE_9__ {char* (* cmdstrf ) (int ,char*,char const*) ;int core; } ;
struct TYPE_10__ {int p; TYPE_1__ cob; } ;
typedef TYPE_2__ RFSRoot ;
typedef TYPE_3__ RFSFile ;


 TYPE_3__* r_fs_file_new (TYPE_2__*,char const*) ;
 int r_return_val_if_fail (int,int *) ;
 char* r_str_rchr (char const*,int *,char) ;
 void* strlen (char*) ;
 char* stub1 (int ,char*,char const*) ;

__attribute__((used)) static RFSFile *__flags_cat(RFSRoot *root, RFSFile *file, const char *path) {
 r_return_val_if_fail (root && path, ((void*)0));
 const char *last = r_str_rchr (path, ((void*)0), '/');
 if (last) {
  last++;
 } else {
  last = path;
 }
 char *res = root->cob.cmdstrf (root->cob.core, "?v %s", last);
 if (file) {
  file->ptr = ((void*)0);
  file->data = (ut8*)res;
  file->p = root->p;
  file->size = strlen (res);
 } else {
  file = r_fs_file_new (root, path);
  file->ptr = ((void*)0);
  file->data = (ut8*)res;
  file->p = root->p;
  file->size = strlen (res);
 }
 return file;
}
