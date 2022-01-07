
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t fwrite (char const*,int,size_t,int ) ;
 int stdout ;

__attribute__((used)) static size_t preload_ub_write(const char *str, size_t str_length)
{
 return fwrite(str, 1, str_length, stdout);
}
