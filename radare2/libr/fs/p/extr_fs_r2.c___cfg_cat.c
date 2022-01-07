
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_11__ {int size; int p; int * data; int * ptr; } ;
struct TYPE_9__ {char* (* cmdstrf ) (int ,char*,char*) ;int core; } ;
struct TYPE_10__ {int p; TYPE_1__ cob; } ;
typedef TYPE_2__ RFSRoot ;
typedef TYPE_3__ RFSFile ;


 TYPE_3__* r_fs_file_new (TYPE_2__*,char const*) ;
 int r_str_replace_char (char*,char,char) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;
 char* stub1 (int ,char*,char*) ;

__attribute__((used)) static RFSFile *__cfg_cat(RFSRoot *root, RFSFile *file, const char *path) {
 if (strlen (path) < 6) {
  return ((void*)0);
 }
 char *a = strdup (path + 5);
 r_str_replace_char (a, '/', '.');
 char *res = root->cob.cmdstrf (root->cob.core, "e %s", a);


 if (!file) {
  file = r_fs_file_new (root, path);
 }
 file->ptr = ((void*)0);
 file->data = (ut8*)res;
 file->p = root->p;
 file->size = strlen (res);
 return file;
}
