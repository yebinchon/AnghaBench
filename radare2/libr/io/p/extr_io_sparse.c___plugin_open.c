
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_io_t {int dummy; } ;


 int strncmp (char const*,char*,int) ;

__attribute__((used)) static bool __plugin_open(struct r_io_t *io, const char *pathname, bool many) {
 return (!strncmp (pathname, "sparse://", 9));
}
