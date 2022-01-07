
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIO ;


 int r_io_mmap_check (char const*) ;

__attribute__((used)) static bool __plugin_open(RIO *io, const char *file, bool many) {
 return r_io_mmap_check (file);
}
