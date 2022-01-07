
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIN (size_t,int) ;
 int STDOUT_FILENO ;
 size_t fwrite (char const*,int,int ,int ) ;
 int stdout ;
 int write (int ,char const*,size_t) ;

__attribute__((used)) static inline size_t sapi_cgi_single_write(const char *str, size_t str_length)
{







 size_t ret;

 ret = fwrite(str, 1, MIN(str_length, 16384), stdout);
 return ret;

}
