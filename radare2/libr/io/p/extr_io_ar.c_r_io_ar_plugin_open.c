
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIO ;


 int strncmp (char*,char const*,int) ;

__attribute__((used)) static bool r_io_ar_plugin_open(RIO *io, const char *file, bool many) {
 return !strncmp ("ar://", file, 5) || !strncmp ("lib://", file, 6);
}
