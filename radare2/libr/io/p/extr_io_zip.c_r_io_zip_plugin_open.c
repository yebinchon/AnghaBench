
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIO ;


 int r_io_zip_check_uri (char const*) ;
 int r_io_zip_check_uri_many (char const*) ;

__attribute__((used)) static bool r_io_zip_plugin_open(RIO *io, const char *file, bool many) {
 if (io && file) {
  if (many) {
   return r_io_zip_check_uri_many (file);
  }
  return r_io_zip_check_uri (file);
 }
 return 0;
}
