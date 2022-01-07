
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetTcpStatistics (int *) ;
 int tcpStats ;

__attribute__((used)) static void mib2TcpInit(void)
{
    GetTcpStatistics(&tcpStats);
}
