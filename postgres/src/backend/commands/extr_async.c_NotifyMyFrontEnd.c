
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int StringInfoData ;


 scalar_t__ DestRemote ;
 int FrontendProtocol ;
 int INFO ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int elog (int ,char*,char const*,char const*) ;
 int pq_beginmessage (int *,char) ;
 int pq_endmessage (int *) ;
 int pq_sendint32 (int *,int ) ;
 int pq_sendstring (int *,char const*) ;
 scalar_t__ whereToSendOutput ;

void
NotifyMyFrontEnd(const char *channel, const char *payload, int32 srcPid)
{
 if (whereToSendOutput == DestRemote)
 {
  StringInfoData buf;

  pq_beginmessage(&buf, 'A');
  pq_sendint32(&buf, srcPid);
  pq_sendstring(&buf, channel);
  if (PG_PROTOCOL_MAJOR(FrontendProtocol) >= 3)
   pq_sendstring(&buf, payload);
  pq_endmessage(&buf);






 }
 else
  elog(INFO, "NOTIFY for \"%s\" payload \"%s\"", channel, payload);
}
