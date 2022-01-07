
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32 ;
typedef int TimestampTz ;
struct TYPE_2__ {int lastQueueFillWarn; } ;
typedef int QueuePosition ;
typedef scalar_t__ BackendId ;


 int Assert (int) ;
 int GetCurrentTimestamp () ;
 scalar_t__ InvalidPid ;
 scalar_t__ QUEUE_BACKEND_PID (scalar_t__) ;
 int QUEUE_BACKEND_POS (scalar_t__) ;
 scalar_t__ QUEUE_FIRST_LISTENER ;
 int QUEUE_FULL_WARN_INTERVAL ;
 int QUEUE_HEAD ;
 scalar_t__ QUEUE_NEXT_LISTENER (scalar_t__) ;
 scalar_t__ QUEUE_POS_EQUAL (int ,int ) ;
 int QUEUE_POS_MIN (int ,int ) ;
 scalar_t__ TimestampDifferenceExceeds (int ,int ,int ) ;
 int WARNING ;
 TYPE_1__* asyncQueueControl ;
 double asyncQueueUsage () ;
 int ereport (int ,int ) ;
 int errdetail (char*,scalar_t__) ;
 int errhint (char*) ;
 int errmsg (char*,double) ;

__attribute__((used)) static void
asyncQueueFillWarning(void)
{
 double fillDegree;
 TimestampTz t;

 fillDegree = asyncQueueUsage();
 if (fillDegree < 0.5)
  return;

 t = GetCurrentTimestamp();

 if (TimestampDifferenceExceeds(asyncQueueControl->lastQueueFillWarn,
           t, QUEUE_FULL_WARN_INTERVAL))
 {
  QueuePosition min = QUEUE_HEAD;
  int32 minPid = InvalidPid;

  for (BackendId i = QUEUE_FIRST_LISTENER; i > 0; i = QUEUE_NEXT_LISTENER(i))
  {
   Assert(QUEUE_BACKEND_PID(i) != InvalidPid);
   min = QUEUE_POS_MIN(min, QUEUE_BACKEND_POS(i));
   if (QUEUE_POS_EQUAL(min, QUEUE_BACKEND_POS(i)))
    minPid = QUEUE_BACKEND_PID(i);
  }

  ereport(WARNING,
    (errmsg("NOTIFY queue is %.0f%% full", fillDegree * 100),
     (minPid != InvalidPid ?
      errdetail("The server process with PID %d is among those with the oldest transactions.", minPid)
      : 0),
     (minPid != InvalidPid ?
      errhint("The NOTIFY queue cannot be emptied until that process ends its current transaction.")
      : 0)));

  asyncQueueControl->lastQueueFillWarn = t;
 }
}
