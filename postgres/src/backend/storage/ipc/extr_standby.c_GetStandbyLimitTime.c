
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;


 int GetXLogReceiptTime (int *,int*) ;
 int TimestampTzPlusMilliseconds (int ,scalar_t__) ;
 scalar_t__ max_standby_archive_delay ;
 scalar_t__ max_standby_streaming_delay ;

__attribute__((used)) static TimestampTz
GetStandbyLimitTime(void)
{
 TimestampTz rtime;
 bool fromStream;





 GetXLogReceiptTime(&rtime, &fromStream);
 if (fromStream)
 {
  if (max_standby_streaming_delay < 0)
   return 0;
  return TimestampTzPlusMilliseconds(rtime, max_standby_streaming_delay);
 }
 else
 {
  if (max_standby_archive_delay < 0)
   return 0;
  return TimestampTzPlusMilliseconds(rtime, max_standby_archive_delay);
 }
}
