
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AtEOXact_GUC (int,int) ;

void
reset_transmission_modes(int nestlevel)
{
 AtEOXact_GUC(1, nestlevel);
}
