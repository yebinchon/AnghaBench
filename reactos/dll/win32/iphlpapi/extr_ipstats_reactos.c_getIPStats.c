
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PMIB_IPSTATS ;
typedef int DWORD ;


 int ERROR_INVALID_PARAMETER ;
 int NO_ERROR ;

DWORD getIPStats(PMIB_IPSTATS stats, DWORD family)
{
  if (!stats)
    return ERROR_INVALID_PARAMETER;
  return NO_ERROR;
}
