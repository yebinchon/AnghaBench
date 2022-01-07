
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_6__ {int off; } ;
struct TYPE_5__ {int buf; int fd; scalar_t__ rawio; } ;
typedef TYPE_1__ RIOMMapFileObj ;
typedef TYPE_2__ RIO ;


 int UT64_MAX ;
 int lseek (int ,int ,int) ;
 int r_buf_seek (int ,int ,int) ;

__attribute__((used)) static ut64 r_io_def_mmap_seek(RIO *io, RIOMMapFileObj *mmo, ut64 offset, int whence) {
 if (!mmo) {
  return UT64_MAX;
 }
 if (mmo->rawio) {
  io->off = lseek (mmo->fd, offset, whence);
  return io->off;
 }
 if (!mmo->buf) {
  return UT64_MAX;
 }
 io->off = r_buf_seek (mmo->buf, offset, whence);
 return io->off;
}
