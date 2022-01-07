
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Timestamp ;



int
timestamp_cmp_internal(Timestamp dt1, Timestamp dt2)
{
 return (dt1 < dt2) ? -1 : ((dt1 > dt2) ? 1 : 0);
}
