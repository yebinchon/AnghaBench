
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PSID ;
typedef int LPWSTR ;
typedef int FILE ;


 scalar_t__ ConvertSidToStringSid (scalar_t__,int *) ;
 int LocalFree (int ) ;
 int klog (int *,char*,int ) ;

void klog_sid(FILE * logfile, PSID pSid)
{
 LPWSTR stringSid;
 if(pSid && ConvertSidToStringSid(pSid, &stringSid))
 {
  klog(logfile, L"%s", stringSid);
  LocalFree(stringSid);
 }
}
