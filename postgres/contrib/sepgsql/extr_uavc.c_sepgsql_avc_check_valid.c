
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ selinux_status_updated () ;
 int sepgsql_avc_reset () ;

__attribute__((used)) static bool
sepgsql_avc_check_valid(void)
{
 if (selinux_status_updated() > 0)
 {
  sepgsql_avc_reset();

  return 0;
 }
 return 1;
}
