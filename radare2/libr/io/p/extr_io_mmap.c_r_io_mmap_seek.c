
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_6__ {scalar_t__ off; } ;
struct TYPE_5__ {int buf; } ;
typedef TYPE_1__ RIOMMapFileObj ;
typedef TYPE_2__ RIO ;


 int R_BUF_SET ;



 int r_buf_seek (int ,scalar_t__,int ) ;
 scalar_t__ r_buf_size (int ) ;
 scalar_t__ r_buf_tell (int ) ;

__attribute__((used)) static ut64 r_io_mmap_seek(RIO *io, RIOMMapFileObj *mmo, ut64 offset, int whence) {
 ut64 seek_val = r_buf_tell (mmo->buf);
 switch (whence) {
 case 128:
  seek_val = (r_buf_size (mmo->buf) < offset)? r_buf_size (mmo->buf): offset;
  r_buf_seek (mmo->buf, io->off = seek_val, R_BUF_SET);
  return seek_val;
 case 130:
  seek_val = (r_buf_size (mmo->buf) < (offset + r_buf_tell (mmo->buf)))? r_buf_size (mmo->buf): offset + r_buf_tell (mmo->buf);
  r_buf_seek (mmo->buf, io->off = seek_val, R_BUF_SET);
  return seek_val;
 case 129:
  seek_val = r_buf_size (mmo->buf);
  r_buf_seek (mmo->buf, io->off = seek_val, R_BUF_SET);
  return seek_val;
 }
 return seek_val;
}
