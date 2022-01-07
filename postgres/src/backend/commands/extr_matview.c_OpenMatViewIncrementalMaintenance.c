
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int matview_maintenance_depth ;

__attribute__((used)) static void
OpenMatViewIncrementalMaintenance(void)
{
 matview_maintenance_depth++;
}
