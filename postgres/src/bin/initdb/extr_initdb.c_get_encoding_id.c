
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int pg_log_error (char*,char const*) ;
 int pg_valid_server_encoding (char const*) ;

__attribute__((used)) static int
get_encoding_id(const char *encoding_name)
{
 int enc;

 if (encoding_name && *encoding_name)
 {
  if ((enc = pg_valid_server_encoding(encoding_name)) >= 0)
   return enc;
 }
 pg_log_error("\"%s\" is not a valid server encoding name",
     encoding_name ? encoding_name : "(null)");
 exit(1);
}
