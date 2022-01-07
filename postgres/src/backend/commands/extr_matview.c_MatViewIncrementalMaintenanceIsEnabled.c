
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ matview_maintenance_depth ;

bool
MatViewIncrementalMaintenanceIsEnabled(void)
{
 return matview_maintenance_depth > 0;
}
