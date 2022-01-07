
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_8__ {scalar_t__ off; } ;
struct TYPE_7__ {TYPE_1__* data; } ;
struct TYPE_6__ {int b; } ;
typedef TYPE_1__ RIOZipFileObj ;
typedef TYPE_2__ RIODesc ;
typedef TYPE_3__ RIO ;


 int r_buf_read_at (int ,scalar_t__,int *,int) ;
 scalar_t__ r_buf_size (int ) ;

__attribute__((used)) static int r_io_zip_read(RIO *io, RIODesc *fd, ut8 *buf, int count) {
 RIOZipFileObj *zfo = ((void*)0);
 if (!fd || !fd->data || !buf) {
  return -1;
 }
 zfo = fd->data;
 if (r_buf_size (zfo->b) < io->off) {
  io->off = r_buf_size (zfo->b);
 }
 return r_buf_read_at (zfo->b, io->off, buf, count);
}
