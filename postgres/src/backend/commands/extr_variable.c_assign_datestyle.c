
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DateOrder ;
 int DateStyle ;

void
assign_datestyle(const char *newval, void *extra)
{
 int *myextra = (int *) extra;

 DateStyle = myextra[0];
 DateOrder = myextra[1];
}
