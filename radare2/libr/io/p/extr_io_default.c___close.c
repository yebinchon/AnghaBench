
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIODesc ;


 int r_io_def_mmap_close (int *) ;

__attribute__((used)) static int __close(RIODesc *fd) {
 return r_io_def_mmap_close (fd);
}
