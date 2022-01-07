
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_4__ {int * buf; int flags; int filename; int * io_backref; } ;
typedef TYPE_1__ RIOMMapFileObj ;
typedef int RIO ;


 int SEEK_SET ;
 int r_buf_free (int *) ;
 int * r_buf_new_mmap (int ,int ) ;
 int r_buf_tell (int *) ;
 int r_io_mmap_seek (int *,TYPE_1__*,int ,int ) ;

__attribute__((used)) static bool r_io_mmap_refresh_buf(RIOMMapFileObj *mmo) {
 RIO* io = mmo->io_backref;
 ut64 cur = mmo->buf? r_buf_tell (mmo->buf): 0;
 if (mmo->buf) {
  r_buf_free (mmo->buf);
  mmo->buf = ((void*)0);
 }
 mmo->buf = r_buf_new_mmap (mmo->filename, mmo->flags);
 if (mmo->buf) {
  r_io_mmap_seek (io, mmo, cur, SEEK_SET);
 }
 return mmo->buf != ((void*)0);
}
