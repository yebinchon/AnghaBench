
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ spl_filesystem_is_dot (char const*) ;

__attribute__((used)) static int spl_filesystem_is_invalid_or_dot(const char * d_name)
{
 return d_name[0] == '\0' || spl_filesystem_is_dot(d_name);
}
