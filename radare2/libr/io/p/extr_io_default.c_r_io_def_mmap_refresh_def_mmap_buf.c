
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
typedef scalar_t__ st64 ;
struct TYPE_4__ {int rawio; int fd; scalar_t__ nocache; int mode; int perm; int filename; int * buf; int * io_backref; } ;
typedef TYPE_1__ RIOMMapFileObj ;
typedef int RIO ;


 int F_NOCACHE ;
 int SEEK_SET ;
 scalar_t__ ST32_MAX ;
 void* __io_posix_open (int ,int ,int ) ;
 int fcntl (int,int ,int) ;
 int r_buf_free (int *) ;
 int * r_buf_new_mmap (int ,int ) ;
 scalar_t__ r_buf_tell (int *) ;
 scalar_t__ r_file_size (int ) ;
 int r_io_def_mmap_seek (int *,TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static int r_io_def_mmap_refresh_def_mmap_buf(RIOMMapFileObj *mmo) {
 RIO* io = mmo->io_backref;
 ut64 cur;
 if (mmo->buf) {
  cur = r_buf_tell (mmo->buf);
  r_buf_free (mmo->buf);
  mmo->buf = ((void*)0);
 } else {
  cur = 0;
 }
 st64 sz = r_file_size (mmo->filename);
 if (sz > ST32_MAX) {

  mmo->rawio = 1;
 }
 if (mmo->rawio) {
  mmo->fd = __io_posix_open (mmo->filename, mmo->perm, mmo->mode);
  if (mmo->nocache) {



  }
  return (mmo->fd != -1);
 }
 mmo->buf = r_buf_new_mmap (mmo->filename, mmo->perm);
 if (mmo->buf) {
  r_io_def_mmap_seek (io, mmo, cur, SEEK_SET);
  return 1;
 } else {
  mmo->rawio = 1;
  mmo->fd = __io_posix_open (mmo->filename, mmo->perm, mmo->mode);
  if (mmo->nocache) {



  }
  return (mmo->fd != -1);
 }
 return 0;
}
