
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetIpStatistics (int *) ;
 int ipStats ;

__attribute__((used)) static void mib2IpStatsInit(void)
{
    GetIpStatistics(&ipStats);
}
