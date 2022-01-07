
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetIcmpStatistics (int *) ;
 int icmpStats ;

__attribute__((used)) static void mib2IcmpInit(void)
{
    GetIcmpStatistics(&icmpStats);
}
