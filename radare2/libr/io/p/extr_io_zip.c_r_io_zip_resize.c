
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_7__ {TYPE_1__* data; } ;
struct TYPE_6__ {int modified; } ;
typedef TYPE_1__ RIOZipFileObj ;
typedef TYPE_2__ RIODesc ;
typedef int RIO ;


 int r_io_zip_flush_file (TYPE_1__*) ;
 scalar_t__ r_io_zip_truncate_buf (TYPE_1__*,int ) ;

__attribute__((used)) static bool r_io_zip_resize(RIO *io, RIODesc *fd, ut64 size) {
 RIOZipFileObj *zfo;
 if (!fd || !fd->data) {
  return 0;
 }
 zfo = fd->data;
 if (r_io_zip_truncate_buf (zfo, size)) {
  zfo->modified = 1;
  r_io_zip_flush_file (zfo);
  return 1;
 }
 return 0;
}
