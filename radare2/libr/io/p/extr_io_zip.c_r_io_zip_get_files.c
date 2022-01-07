
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
typedef int ut32 ;
struct zip_stat {int name; } ;
struct zip {int dummy; } ;
typedef int RList ;


 int free ;
 struct zip* r_io_zip_open_archive (char*,int ,int,int) ;
 int r_list_append (int *,char*) ;
 int * r_list_newf (int ) ;
 char* strdup (int ) ;
 int zip_close (struct zip*) ;
 scalar_t__ zip_get_num_files (struct zip*) ;
 int zip_stat_index (struct zip*,scalar_t__,int ,struct zip_stat*) ;
 int zip_stat_init (struct zip_stat*) ;

RList * r_io_zip_get_files(char *archivename, ut32 perm, int mode, int rw) {
 struct zip *zipArch = r_io_zip_open_archive (archivename, perm, mode, rw);
 ut64 num_entries = 0, i = 0;
 RList *files = ((void*)0);
 struct zip_stat sb;
 char *name;
 if (zipArch) {
  files = r_list_newf (free);
  if (!files) {
   zip_close (zipArch);
   return ((void*)0);
  }
  num_entries = zip_get_num_files (zipArch);
  for (i = 0; i < num_entries; i++) {
   zip_stat_init (&sb);
   zip_stat_index (zipArch, i, 0, &sb);
   if ((name = strdup (sb.name))) {
    r_list_append (files, name);
   }
  }
 }
 zip_close (zipArch);
 return files;
}
