
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* save_format_domain ;
 int save_format_errnumber ;

void
pre_format_elog_string(int errnumber, const char *domain)
{

 save_format_errnumber = errnumber;

 save_format_domain = domain;
}
