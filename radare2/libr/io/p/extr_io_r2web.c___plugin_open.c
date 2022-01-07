
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIO ;


 int strlen (char const*) ;
 int strncmp (char const*,char const*,int ) ;

__attribute__((used)) static bool __plugin_open(RIO *io, const char *pathname, bool many) {
 const char *uri = "r2web://";
 return (!strncmp (pathname, uri, strlen (uri)));
}
