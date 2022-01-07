
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SEPGSQL_MODE_DEFAULT ;
 scalar_t__ selinux_status_getenforce () ;
 scalar_t__ sepgsql_mode ;

bool
sepgsql_getenforce(void)
{
 if (sepgsql_mode == SEPGSQL_MODE_DEFAULT &&
  selinux_status_getenforce() > 0)
  return 1;

 return 0;
}
