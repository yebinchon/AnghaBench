
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIODesc ;
typedef int RIO ;


 int r_io_mmap_check (char const*) ;
 int * r_io_mmap_open (int *,char const*,int,int) ;

__attribute__((used)) static RIODesc *__open(RIO *io, const char *file, int flags, int mode) {
 if (!r_io_mmap_check (file)) {
  return ((void*)0);
 }
 return r_io_mmap_open (io, file, flags, mode);
}
