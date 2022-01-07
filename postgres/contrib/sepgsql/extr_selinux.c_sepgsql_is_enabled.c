
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SEPGSQL_MODE_DISABLED ;
 scalar_t__ sepgsql_mode ;

bool
sepgsql_is_enabled(void)
{
 return (sepgsql_mode != SEPGSQL_MODE_DISABLED ? 1 : 0);
}
