
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RIODesc ;
typedef int RIO ;


 int r_io_def_mmap_write (int *,int *,int const*,int) ;

__attribute__((used)) static int __write(RIO *io, RIODesc *fd, const ut8 *buf, int len) {
 return r_io_def_mmap_write(io, fd, buf, len);
}
