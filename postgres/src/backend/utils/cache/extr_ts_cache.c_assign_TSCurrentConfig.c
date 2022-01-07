
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InvalidOid ;
 int TSCurrentConfigCache ;

void
assign_TSCurrentConfig(const char *newval, void *extra)
{

 TSCurrentConfigCache = InvalidOid;
}
