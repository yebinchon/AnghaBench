
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ut32 ;
struct TYPE_10__ {scalar_t__ size; int p; int * ptr; } ;
struct TYPE_8__ {char* (* system ) (int ,char*) ;int io; } ;
struct TYPE_9__ {int p; TYPE_1__ iob; } ;
typedef TYPE_2__ RFSRoot ;
typedef TYPE_3__ RFSFile ;


 int R_FREE (char*) ;
 TYPE_3__* r_fs_file_new (TYPE_2__*,char const*) ;
 char* r_str_newf (char*,char const*) ;
 int sscanf (char*,char*,scalar_t__*) ;
 char* stub1 (int ,char*) ;

__attribute__((used)) static RFSFile *fs_io_open(RFSRoot *root, const char *path, bool create) {
 char *cmd = r_str_newf ("m %s", path);
 char *res = root->iob.system (root->iob.io, cmd);
 R_FREE (cmd);
 if (res) {
  ut32 size = 0;
  if (sscanf (res, "%u", &size) != 1) {
   size = 0;
  }
  R_FREE (res);
  if (size == 0) {
   return ((void*)0);
  }
  RFSFile *file = r_fs_file_new (root, path);
  if (!file) {
   return ((void*)0);
  }
  file->ptr = ((void*)0);
  file->p = root->p;
  file->size = size;
  return file;
 }
 return ((void*)0);
}
