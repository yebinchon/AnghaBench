
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;

__attribute__((used)) static inline int spl_filesystem_is_dot(const char * d_name)
{
 return !strcmp(d_name, ".") || !strcmp(d_name, "..");
}
