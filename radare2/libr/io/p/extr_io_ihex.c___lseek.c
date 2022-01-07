
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct r_io_t {int off; } ;
struct TYPE_5__ {TYPE_1__* data; } ;
struct TYPE_4__ {int rbuf; } ;
typedef TYPE_1__ Rihex ;
typedef TYPE_2__ RIODesc ;


 int r_buf_seek (int ,int,int) ;

__attribute__((used)) static ut64 __lseek(struct r_io_t *io, RIODesc *fd, ut64 offset, int whence) {
 Rihex *rih;
 if (!fd || !fd->data) {
  return -1;
 }
 rih = fd->data;
 io->off = r_buf_seek (rih->rbuf, offset, whence);
 return io->off;
}
