
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_6__ {int off; } ;
struct TYPE_5__ {int * data; } ;
typedef TYPE_1__ RIODesc ;
typedef TYPE_2__ RIO ;
typedef int RBuffer ;


 int R_BUF_SET ;



 int r_buf_seek (int *,int,int ) ;
 int r_buf_size (int *) ;
 int r_buf_tell (int *) ;

__attribute__((used)) static ut64 r_io_ar_lseek(RIO *io, RIODesc *fd, ut64 offset, int whence) {
 RBuffer *b;
 ut64 seek_val = 0;

 if (!fd || !fd->data) {
  return -1;
 }

 b = fd->data;
 seek_val = r_buf_tell (b);

 switch (whence) {
 case 128:
  seek_val = (r_buf_size (b) < offset)? r_buf_size (b) : offset;
  io->off = seek_val;
  r_buf_seek (b, seek_val, R_BUF_SET);
  return seek_val;
 case 130:
  seek_val = (r_buf_size (b) < offset)? r_buf_size (b) : offset;
  io->off = seek_val;
  r_buf_seek (b, seek_val, R_BUF_SET);
  return seek_val;
 case 129:
  seek_val = r_buf_size (b);
  io->off = seek_val;
  r_buf_seek (b, seek_val, R_BUF_SET);
  return seek_val;
 }
 return seek_val;
}
