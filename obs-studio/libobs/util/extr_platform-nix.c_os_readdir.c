
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct os_dirent {char* d_name; int directory; } ;
struct dstr {int array; int member_0; } ;
struct TYPE_4__ {struct os_dirent out; int path; TYPE_2__* cur_dirent; int dir; } ;
typedef TYPE_1__ os_dir_t ;
struct TYPE_5__ {int d_name; } ;


 int dstr_cat (struct dstr*,char*) ;
 int dstr_copy (struct dstr*,int ) ;
 int dstr_free (struct dstr*) ;
 int is_dir (int ) ;
 TYPE_2__* readdir (int ) ;
 int strncpy (char*,int ,int) ;

struct os_dirent *os_readdir(os_dir_t *dir)
{
 struct dstr file_path = {0};

 if (!dir)
  return ((void*)0);

 dir->cur_dirent = readdir(dir->dir);
 if (!dir->cur_dirent)
  return ((void*)0);

 strncpy(dir->out.d_name, dir->cur_dirent->d_name, 255);

 dstr_copy(&file_path, dir->path);
 dstr_cat(&file_path, "/");
 dstr_cat(&file_path, dir->out.d_name);

 dir->out.directory = is_dir(file_path.array);

 dstr_free(&file_path);

 return &dir->out;
}
