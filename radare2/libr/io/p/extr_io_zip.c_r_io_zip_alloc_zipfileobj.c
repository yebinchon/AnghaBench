
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
typedef int ut32 ;
struct zip_stat {int * name; } ;
struct zip {int dummy; } ;
typedef int RIOZipFileObj ;


 int * r_io_zip_create_new_file (char const*,char const*,struct zip_stat*,int ,int,int) ;
 struct zip* r_io_zip_open_archive (char const*,int ,int,int) ;
 int r_io_zip_slurp_file (int *) ;
 scalar_t__ strcmp (int *,char const*) ;
 int zip_close (struct zip*) ;
 scalar_t__ zip_get_num_files (struct zip*) ;
 int zip_stat_index (struct zip*,scalar_t__,int ,struct zip_stat*) ;
 int zip_stat_init (struct zip_stat*) ;

RIOZipFileObj* r_io_zip_alloc_zipfileobj(const char *archivename, const char *filename, ut32 perm, int mode, int rw) {
 RIOZipFileObj *zfo = ((void*)0);
 ut64 i, num_entries;
 struct zip_stat sb;
 struct zip *zipArch = r_io_zip_open_archive (archivename, perm, mode, rw);
 if (!zipArch) {
  return ((void*)0);
 }
 num_entries = zip_get_num_files (zipArch);

 for (i = 0; i < num_entries; i++) {
  zip_stat_init (&sb);
  zip_stat_index (zipArch, i, 0, &sb);
  if (sb.name != ((void*)0)) {
   if (strcmp (sb.name, filename) == 0) {
    zfo = r_io_zip_create_new_file (
     archivename, filename, &sb,
     perm, mode, rw);
    r_io_zip_slurp_file (zfo);
    break;
   }
  }
 }
 if (!zfo) {
  zfo = r_io_zip_create_new_file (archivename,
   filename, ((void*)0), perm, mode, rw);
 }
 zip_close (zipArch);
 return zfo;
}
