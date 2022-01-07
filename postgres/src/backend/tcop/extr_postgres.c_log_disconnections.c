
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* remote_port; int remote_host; int database_name; int user_name; } ;
typedef TYPE_1__ Port ;
typedef int Datum ;


 int GetCurrentTimestamp () ;
 int LOG ;
 TYPE_1__* MyProcPort ;
 int MyStartTimestamp ;
 long SECS_PER_HOUR ;
 long SECS_PER_MINUTE ;
 int TimestampDifference (int ,int ,long*,int*) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int,int,int,int,int ,int ,int ,char*,scalar_t__*) ;

__attribute__((used)) static void
log_disconnections(int code, Datum arg)
{
 Port *port = MyProcPort;
 long secs;
 int usecs;
 int msecs;
 int hours,
    minutes,
    seconds;

 TimestampDifference(MyStartTimestamp,
      GetCurrentTimestamp(),
      &secs, &usecs);
 msecs = usecs / 1000;

 hours = secs / SECS_PER_HOUR;
 secs %= SECS_PER_HOUR;
 minutes = secs / SECS_PER_MINUTE;
 seconds = secs % SECS_PER_MINUTE;

 ereport(LOG,
   (errmsg("disconnection: session time: %d:%02d:%02d.%03d "
     "user=%s database=%s host=%s%s%s",
     hours, minutes, seconds, msecs,
     port->user_name, port->database_name, port->remote_host,
     port->remote_port[0] ? " port=" : "", port->remote_port)));
}
