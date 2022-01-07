
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* name; } ;
struct TYPE_7__ {int filename; } ;
typedef TYPE_1__ RIOMMapFileObj ;
typedef TYPE_2__ RIODesc ;
typedef int RIO ;


 int free (char*) ;
 TYPE_1__* r_io_def_mmap_create_new_file (int *,char const*,int,int) ;
 TYPE_2__* r_io_desc_new (int *,int *,int ,int,int,TYPE_1__*) ;
 int r_io_plugin_default ;
 int r_return_val_if_fail (int,int *) ;
 scalar_t__ r_str_startswith (char*,char*) ;
 void* strdup (char const*) ;
 int strlen (char*) ;

__attribute__((used)) static RIODesc *r_io_def_mmap_open(RIO *io, const char *file, int perm, int mode) {
 r_return_val_if_fail (io && file, ((void*)0));
 RIOMMapFileObj *mmo = r_io_def_mmap_create_new_file (io, file, perm, mode);
 if (!mmo) {
  return ((void*)0);
 }
 RIODesc *d = r_io_desc_new (io, &r_io_plugin_default, mmo->filename, perm, mode, mmo);
 if (!d->name) {
  d->name = strdup (file);
 }
 if (r_str_startswith (d->name, "file://")) {
  char *oldname = d->name;
  d->name = strdup (oldname + strlen ("file://"));
  free (oldname);
 }
 return d;
}
