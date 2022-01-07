
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut64 ;
struct TYPE_5__ {scalar_t__ extra_cmdline; scalar_t__* id; scalar_t__ cmdline; scalar_t__ name; } ;
struct TYPE_4__ {int buf; TYPE_2__ bi; } ;
typedef int Sdb ;
typedef TYPE_1__ BootImageObj ;
typedef TYPE_2__ BootImage ;


 int BOOT_ARGS_SIZE ;
 int BOOT_EXTRA_ARGS_SIZE ;
 int BOOT_NAME_SIZE ;
 int free (char*) ;
 int r_buf_read_at (int ,int ,int *,int) ;
 int r_buf_size (int ) ;
 char* r_str_ndup (char*,int ) ;
 int sdb_num_set (int *,char*,int ,int ) ;
 int sdb_set (int *,char*,char*,int ) ;

__attribute__((used)) static int bootimg_header_load(BootImageObj *obj, Sdb *db) {
 char *n;
 int i;
 if (r_buf_size (obj->buf) < sizeof (BootImage)) {
  return 0;
 }

 BootImage *bi = &obj->bi;
 (void) r_buf_read_at (obj->buf, 0, (ut8 *)bi, sizeof (BootImage));
 if ((n = r_str_ndup ((char *) bi->name, BOOT_NAME_SIZE))) {
  sdb_set (db, "name", n, 0);
  free (n);
 }
 if ((n = r_str_ndup ((char *) bi->cmdline, BOOT_ARGS_SIZE))) {
  sdb_set (db, "cmdline", n, 0);
  free (n);
 }
 for (i = 0; i < 8; i++) {
  sdb_num_set (db, "id", (ut64) bi->id[i], 0);
 }
 if ((n = r_str_ndup ((char *) bi->extra_cmdline, BOOT_EXTRA_ARGS_SIZE))) {
  sdb_set (db, "extra_cmdline", n, 0);
  free (n);
 }
 return 1;
}
