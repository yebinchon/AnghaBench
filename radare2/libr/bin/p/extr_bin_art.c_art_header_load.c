
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_5__ {int compile_pic; int image_roots; int patch_delta; int oat_data_end; int oat_data_begin; int oat_file_end; int oat_file_begin; int * version; int checksum; int image_size; int image_base; } ;
struct TYPE_4__ {int buf; TYPE_2__ art; } ;
typedef int Sdb ;
typedef TYPE_1__ ArtObj ;
typedef TYPE_2__ ARTHeader ;


 int r_buf_fread_at (int ,int ,int *,char*,int) ;
 int r_buf_size (int ) ;
 int sdb_fmt (char*,int ,...) ;
 int sdb_set (int *,char*,int ,int ) ;

__attribute__((used)) static int art_header_load(ArtObj *ao, Sdb *db) {

 if (r_buf_size (ao->buf) < sizeof (ARTHeader)) {
  return 0;
 }
 ARTHeader *art = &ao->art;
 (void) r_buf_fread_at (ao->buf, 0, (ut8 *) art, "IIiiiiiiiiiiii", 1);
 sdb_set (db, "img.base", sdb_fmt ("0x%x", art->image_base), 0);
 sdb_set (db, "img.size", sdb_fmt ("0x%x", art->image_size), 0);
 sdb_set (db, "art.checksum", sdb_fmt ("0x%x", art->checksum), 0);
 sdb_set (db, "art.version", sdb_fmt ("%c%c%c",
   art->version[0], art->version[1], art->version[2]), 0);
 sdb_set (db, "oat.begin", sdb_fmt ("0x%x", art->oat_file_begin), 0);
 sdb_set (db, "oat.end", sdb_fmt ("0x%x", art->oat_file_end), 0);
 sdb_set (db, "oat_data.begin", sdb_fmt ("0x%x", art->oat_data_begin), 0);
 sdb_set (db, "oat_data.end", sdb_fmt ("0x%x", art->oat_data_end), 0);
 sdb_set (db, "patch_delta", sdb_fmt ("0x%x", art->patch_delta), 0);
 sdb_set (db, "image_roots", sdb_fmt ("0x%x", art->image_roots), 0);
 sdb_set (db, "compile_pic", sdb_fmt ("0x%x", art->compile_pic), 0);
 return 1;
}
