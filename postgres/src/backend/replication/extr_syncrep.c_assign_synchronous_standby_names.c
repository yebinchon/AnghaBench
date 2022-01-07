
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SyncRepConfigData ;


 int * SyncRepConfig ;

void
assign_synchronous_standby_names(const char *newval, void *extra)
{
 SyncRepConfig = (SyncRepConfigData *) extra;
}
