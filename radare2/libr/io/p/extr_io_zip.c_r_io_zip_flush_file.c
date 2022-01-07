
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct zip_source {int dummy; } ;
struct zip {int dummy; } ;
struct TYPE_3__ {int entry; scalar_t__ name; int b; int rw; int mode; int perm; int archivename; } ;
typedef TYPE_1__ RIOZipFileObj ;


 int * r_buf_data (int ,int *) ;
 struct zip* r_io_zip_open_archive (int ,int ,int ,int ) ;
 scalar_t__ zip_add (struct zip*,scalar_t__,struct zip_source*) ;
 int zip_close (struct zip*) ;
 int zip_name_locate (struct zip*,scalar_t__,int ) ;
 scalar_t__ zip_replace (struct zip*,int,struct zip_source*) ;
 struct zip_source* zip_source_buffer (struct zip*,int const*,int ,int ) ;
 int zip_source_free (struct zip_source*) ;

int r_io_zip_flush_file(RIOZipFileObj *zfo) {
 int res = 0;
 struct zip * zipArch;

 if (!zfo) {
  return res;
 }

 zipArch = r_io_zip_open_archive (
  zfo->archivename, zfo->perm, zfo->mode, zfo->rw);
 if (!zipArch) {
  return res;
 }

 ut64 tmpsz;
 const ut8 *tmp = r_buf_data (zfo->b, &tmpsz);
 struct zip_source *s = zip_source_buffer (zipArch, tmp, tmpsz, 0);
 if (s && zfo->entry != -1) {
  if (zip_replace(zipArch, zfo->entry, s) == 0) {
   res = 1;
  }
 } else if (s && zfo->name) {
  if (zip_add (zipArch, zfo->name, s) == 0) {
   zfo->entry = zip_name_locate (zipArch, zfo->name, 0);
   res = 1;
  }
 }

 zip_close (zipArch);
 if (s) {
  zip_source_free (s);
 }
 return res;
}
