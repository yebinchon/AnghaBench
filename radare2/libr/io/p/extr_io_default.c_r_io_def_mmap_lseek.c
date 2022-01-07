
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {scalar_t__ data; } ;
typedef int RIOMMapFileObj ;
typedef TYPE_1__ RIODesc ;
typedef int RIO ;


 int UT64_MAX ;
 int r_io_def_mmap_seek (int *,int *,int ,int) ;
 int r_return_val_if_fail (int,int ) ;

__attribute__((used)) static ut64 r_io_def_mmap_lseek(RIO *io, RIODesc *fd, ut64 offset, int whence) {
 r_return_val_if_fail (fd && fd->data, UT64_MAX);
 return r_io_def_mmap_seek (io, (RIOMMapFileObj *)fd->data, offset, whence);
}
