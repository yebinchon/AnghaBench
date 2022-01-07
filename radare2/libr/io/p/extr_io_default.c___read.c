
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RIODesc ;
typedef int RIO ;


 int r_io_def_mmap_read (int *,int *,int *,int) ;

__attribute__((used)) static int __read(RIO *io, RIODesc *fd, ut8 *buf, int len) {
 return r_io_def_mmap_read (io, fd, buf, len);
}
