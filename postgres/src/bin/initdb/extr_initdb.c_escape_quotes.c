
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* escape_single_quotes_ascii (char const*) ;
 int exit (int) ;
 int pg_log_error (char*) ;

__attribute__((used)) static char *
escape_quotes(const char *src)
{
 char *result = escape_single_quotes_ascii(src);

 if (!result)
 {
  pg_log_error("out of memory");
  exit(1);
 }
 return result;
}
