
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {int * data; } ;
typedef int RIOMMapFileObj ;
typedef TYPE_1__ RIODesc ;
typedef int RIO ;


 int r_io_mmap_seek (int *,int *,int,int) ;

__attribute__((used)) static ut64 r_io_mmap_lseek(RIO *io, RIODesc *fd, ut64 offset, int whence) {
 RIOMMapFileObj *mmo;
 if (!fd || !fd->data) {
  return -1;
 }
 mmo = fd->data;
 return r_io_mmap_seek (io, mmo, offset, whence);
}
