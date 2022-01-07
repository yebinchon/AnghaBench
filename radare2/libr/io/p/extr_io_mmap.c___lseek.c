
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RIODesc ;
typedef int RIO ;


 int r_io_mmap_lseek (int *,int *,int ,int) ;

__attribute__((used)) static ut64 __lseek(RIO *io, RIODesc *fd, ut64 offset, int whence) {
 return r_io_mmap_lseek (io, fd, offset, whence);
}
