
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_8__ {int off; } ;
struct TYPE_7__ {TYPE_1__* data; } ;
struct TYPE_6__ {int b; } ;
typedef TYPE_1__ RIOZipFileObj ;
typedef TYPE_2__ RIODesc ;
typedef TYPE_3__ RIO ;


 int R_BUF_SET ;



 int r_buf_seek (int ,int,int ) ;
 int r_buf_size (int ) ;
 int r_buf_tell (int ) ;

__attribute__((used)) static ut64 r_io_zip_lseek(RIO *io, RIODesc *fd, ut64 offset, int whence) {
 RIOZipFileObj *zfo;
 ut64 seek_val = 0;

 if (!fd || !fd->data) {
  return -1;
 }

 zfo = fd->data;
 seek_val = r_buf_tell (zfo->b);

 switch (whence) {
 case 128:
  seek_val = (r_buf_size (zfo->b) < offset)? r_buf_size (zfo->b): offset;
  io->off = seek_val;
  r_buf_seek (zfo->b, seek_val, R_BUF_SET);
  return seek_val;
 case 130:
  seek_val = (r_buf_size (zfo->b) < (offset + r_buf_tell (zfo->b)))? r_buf_size (zfo->b): offset + r_buf_tell (zfo->b);
  io->off = seek_val;
  r_buf_seek (zfo->b, seek_val, R_BUF_SET);
  return seek_val;
 case 129:
  seek_val = r_buf_size (zfo->b);
  io->off = seek_val;
  r_buf_seek (zfo->b, seek_val, R_BUF_SET);
  return seek_val;
 }
 return seek_val;
}
