
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
struct zip_stat {int size; } ;
struct zip_file {int dummy; } ;
struct zip {int dummy; } ;
struct TYPE_3__ {int entry; int opened; scalar_t__ b; int rw; int mode; int perm; int archivename; } ;
typedef TYPE_1__ RIOZipFileObj ;


 int * calloc (int,int ) ;
 int free (int *) ;
 scalar_t__ r_buf_new () ;
 int r_buf_set_bytes (scalar_t__,int *,int ) ;
 struct zip* r_io_zip_open_archive (int ,int ,int ,int ) ;
 int zip_close (struct zip*) ;
 int zip_fclose (struct zip_file*) ;
 struct zip_file* zip_fopen_index (struct zip*,int,int ) ;
 int zip_fread (struct zip_file*,int *,int ) ;
 int zip_stat_index (struct zip*,int,int ,struct zip_stat*) ;
 int zip_stat_init (struct zip_stat*) ;

__attribute__((used)) static int r_io_zip_slurp_file(RIOZipFileObj *zfo) {
 struct zip_file *zFile = ((void*)0);
 struct zip *zipArch;
 struct zip_stat sb;
 bool res = 0;
 if (!zfo) {
  return res;
 }
 zipArch = r_io_zip_open_archive (
  zfo->archivename, zfo->perm,
  zfo->mode, zfo->rw);

 if (zipArch && zfo && zfo->entry != -1) {
  zFile = zip_fopen_index (zipArch, zfo->entry, 0);
  if (!zfo->b) {
   zfo->b = r_buf_new ();
  }
  zip_stat_init (&sb);
  if (zFile && zfo->b && !zip_stat_index (zipArch, zfo->entry, 0, &sb)) {
   ut8 *buf = calloc (1, sb.size);
   if (buf) {
    zip_fread (zFile, buf, sb.size);
    r_buf_set_bytes (zfo->b, buf, sb.size);
    res = 1;
    zfo->opened = 1;
    free (buf);
   }
  }
  zip_fclose (zFile);
 }
 zip_close (zipArch);
 return res;
}
