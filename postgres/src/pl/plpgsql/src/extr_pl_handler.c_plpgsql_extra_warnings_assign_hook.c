
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int plpgsql_extra_warnings ;

__attribute__((used)) static void
plpgsql_extra_warnings_assign_hook(const char *newvalue, void *extra)
{
 plpgsql_extra_warnings = *((int *) extra);
}
