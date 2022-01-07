
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const O_BINARY ;
 int const O_CREAT ;
 int const O_RDONLY ;
 int const O_RDWR ;
 int R_PERM_CREAT ;
 int R_PERM_W ;
 scalar_t__ r_file_is_directory (char const*) ;
 int r_sandbox_creat (char const*,int) ;
 int r_sandbox_open (char const*,int const,int) ;
 scalar_t__ r_str_startswith (char const*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int __io_posix_open(const char *file, int perm, int mode) {
 int fd;
 if (r_str_startswith (file, "file://")) {
  file += strlen ("file://");
 }
 if (r_file_is_directory (file)) {
  return -1;
 }
 const int posixFlags = (perm & R_PERM_W) ? (perm & R_PERM_CREAT)
   ? (O_RDWR | O_CREAT) : O_RDWR : O_RDONLY;
 fd = r_sandbox_open (file, posixFlags, mode);

 return fd;
}
