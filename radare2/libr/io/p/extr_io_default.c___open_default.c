
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIODesc ;
typedef int RIO ;


 scalar_t__ r_io_def_mmap_check_default (char const*) ;
 int * r_io_def_mmap_open (int *,char const*,int,int) ;

__attribute__((used)) static RIODesc *__open_default(RIO *io, const char *file, int perm, int mode) {
 if (r_io_def_mmap_check_default (file)) {
  return r_io_def_mmap_open (io, file, perm, mode);
 }
 return ((void*)0);
}
