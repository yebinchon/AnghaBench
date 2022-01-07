
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filename; } ;
typedef TYPE_1__ RIOMMapFileObj ;
typedef int RIODesc ;
typedef int RIO ;


 int * r_io_desc_new (int *,int *,int ,int,int,TYPE_1__*) ;
 TYPE_1__* r_io_mmap_create_new_file (int *,char const*,int,int) ;
 int r_io_plugin_mmap ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static RIODesc *r_io_mmap_open(RIO *io, const char *file, int flags, int mode) {
 if (!strncmp (file, "mmap://", 7)) {
  file += 7;
 }
 RIOMMapFileObj *mmo = r_io_mmap_create_new_file (io, file, mode, flags);
 return mmo? r_io_desc_new (io, &r_io_plugin_mmap, mmo->filename, flags, mode, mmo): ((void*)0);
}
