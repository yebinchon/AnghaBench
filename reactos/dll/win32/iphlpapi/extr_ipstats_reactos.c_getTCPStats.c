
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MIB_TCPSTATS ;
typedef int DWORD ;


 int ERROR_INVALID_PARAMETER ;
 int NO_ERROR ;

DWORD getTCPStats(MIB_TCPSTATS *stats, DWORD family)
{
  if (!stats)
    return ERROR_INVALID_PARAMETER;
  return NO_ERROR;
}
