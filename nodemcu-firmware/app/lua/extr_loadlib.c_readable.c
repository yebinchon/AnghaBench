
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vfs_close (int) ;
 int vfs_open (char const*,char*) ;

__attribute__((used)) static int readable (const char *filename) {
  int f = vfs_open(filename, "r");
  if (!f) return 0;
  vfs_close(f);
  return 1;
}
