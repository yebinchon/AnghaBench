
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_4__ {int filename; } ;
typedef TYPE_1__ RIOMMapFileObj ;


 int eprintf (char*) ;
 int r_file_truncate (int ,int ) ;
 int r_io_def_mmap_refresh_def_mmap_buf (TYPE_1__*) ;

__attribute__((used)) static int r_io_def_mmap_truncate(RIOMMapFileObj *mmo, ut64 size) {
 bool res = r_file_truncate (mmo->filename, size);
 if (res && !r_io_def_mmap_refresh_def_mmap_buf (mmo) ) {
  eprintf ("r_io_def_mmap_truncate: Error trying to refresh the def_mmap'ed file.");
  res = 0;
 } else if (!res) {
  eprintf ("r_io_def_mmap_truncate: Error trying to resize the file.");
 }
 return res;
}
