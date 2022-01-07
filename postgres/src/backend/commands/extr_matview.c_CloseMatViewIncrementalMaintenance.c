
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 scalar_t__ matview_maintenance_depth ;

__attribute__((used)) static void
CloseMatViewIncrementalMaintenance(void)
{
 matview_maintenance_depth--;
 Assert(matview_maintenance_depth >= 0);
}
