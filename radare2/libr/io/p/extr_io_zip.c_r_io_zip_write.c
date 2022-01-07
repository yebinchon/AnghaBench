
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_10__ {scalar_t__ off; } ;
struct TYPE_9__ {TYPE_1__* data; } ;
struct TYPE_8__ {int perm; int modified; int b; } ;
typedef TYPE_1__ RIOZipFileObj ;
typedef TYPE_2__ RIODesc ;
typedef TYPE_3__ RIO ;


 int R_PERM_W ;
 scalar_t__ r_buf_size (int ) ;
 scalar_t__ r_buf_tell (int ) ;
 int r_buf_write_at (int ,scalar_t__,int const*,int) ;
 int r_io_zip_flush_file (TYPE_1__*) ;
 int r_io_zip_realloc_buf (TYPE_1__*,int) ;

__attribute__((used)) static int r_io_zip_write(RIO *io, RIODesc *fd, const ut8 *buf, int count) {
 RIOZipFileObj *zfo;
 int ret = 0;
 if (!fd || !fd->data || !buf) {
  return -1;
 }
 zfo = fd->data;
 if (!(zfo->perm & R_PERM_W)) {
  return -1;
 }
 if (r_buf_tell (zfo->b) + count >= r_buf_size (zfo->b)) {
  r_io_zip_realloc_buf (zfo, count);
 }
 if (r_buf_size (zfo->b) < io->off) {
  io->off = r_buf_size (zfo->b);
 }
 zfo->modified = 1;
 ret = r_buf_write_at (zfo->b, io->off, buf, count);


 r_io_zip_flush_file (zfo);
 return ret;
}
