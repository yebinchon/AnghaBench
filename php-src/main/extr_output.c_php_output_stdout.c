
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fwrite (char const*,int,size_t,int ) ;
 int stdout ;

__attribute__((used)) static size_t php_output_stdout(const char *str, size_t str_len)
{
 fwrite(str, 1, str_len, stdout);
 return str_len;
}
