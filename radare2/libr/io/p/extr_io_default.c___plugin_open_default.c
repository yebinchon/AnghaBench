
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIO ;


 int r_io_def_mmap_check_default (char const*) ;

__attribute__((used)) static bool __plugin_open_default(RIO *io, const char *file, bool many) {
 return r_io_def_mmap_check_default (file);
}
