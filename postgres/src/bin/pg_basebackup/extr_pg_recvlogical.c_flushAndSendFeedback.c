
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;
typedef int PGconn ;


 int OutputFsync (int ) ;
 int feGetCurrentTimestamp () ;
 int sendFeedback (int *,int ,int,int) ;

__attribute__((used)) static bool
flushAndSendFeedback(PGconn *conn, TimestampTz *now)
{

 if (!OutputFsync(*now))
  return 0;
 *now = feGetCurrentTimestamp();
 if (!sendFeedback(conn, *now, 1, 0))
  return 0;

 return 1;
}
