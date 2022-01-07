
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int size; int p; int * ptr; } ;
struct TYPE_8__ {int p; } ;
typedef TYPE_1__ RFSRoot ;
typedef TYPE_2__ RFSFile ;
typedef int FILE ;


 int SEEK_END ;
 int fclose (int *) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int r_fs_file_free (TYPE_2__*) ;
 TYPE_2__* r_fs_file_new (TYPE_1__*,char const*) ;
 int * r_sandbox_fopen (char const*,char*) ;

__attribute__((used)) static RFSFile* fs_posix_open(RFSRoot *root, const char *path, bool create) {
 FILE *fd;
 RFSFile *file = r_fs_file_new (root, path);
 if (!file) {
  return ((void*)0);
 }
 file->ptr = ((void*)0);
 file->p = root->p;
 fd = r_sandbox_fopen (path, create? "wb": "rb");
 if (fd) {
  fseek (fd, 0, SEEK_END);
  file->size = ftell (fd);
  fclose (fd);
 } else {
  r_fs_file_free (file);
  file = ((void*)0);
 }
 return file;
}
