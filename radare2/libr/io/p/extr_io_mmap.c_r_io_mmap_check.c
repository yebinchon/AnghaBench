
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int r_io_mmap_check (const char *filename) {
 return (filename && !strncmp (filename, "mmap://", 7) && *(filename + 7));
}
