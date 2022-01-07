
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIO ;


 scalar_t__ r_str_startswith (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static bool __plugin_open (RIO *io, const char *pathname, bool many) {
 return pathname && r_str_startswith (pathname, "gprobe://") && strlen (pathname + strlen ("gprobe://"));
}
