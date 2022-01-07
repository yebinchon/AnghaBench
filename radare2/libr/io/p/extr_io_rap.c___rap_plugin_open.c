
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIO ;


 scalar_t__ r_str_startswith (char const*,char*) ;

__attribute__((used)) static bool __rap_plugin_open(RIO *io, const char *pathname, bool many) {
 return r_str_startswith (pathname, "rap://") || r_str_startswith (pathname, "raps://");
}
