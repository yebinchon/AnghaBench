
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMMERROR ;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int FATAL ;
 int GetCurrentTimestamp () ;
 int ProcessStandbyMessage () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int last_processing ;
 int last_reply_timestamp ;
 int pq_endmsgread () ;
 int pq_getbyte_if_available (unsigned char*) ;
 scalar_t__ pq_getmessage (int *,int ) ;
 int pq_putmessage_noblock (char,int *,int ) ;
 int pq_startmsgread () ;
 int proc_exit (int ) ;
 int reply_message ;
 int resetStringInfo (int *) ;
 int streamingDoneReceiving ;
 int streamingDoneSending ;
 int waiting_for_ping_response ;

__attribute__((used)) static void
ProcessRepliesIfAny(void)
{
 unsigned char firstchar;
 int r;
 bool received = 0;

 last_processing = GetCurrentTimestamp();

 for (;;)
 {
  pq_startmsgread();
  r = pq_getbyte_if_available(&firstchar);
  if (r < 0)
  {

   ereport(COMMERROR,
     (errcode(ERRCODE_PROTOCOL_VIOLATION),
      errmsg("unexpected EOF on standby connection")));
   proc_exit(0);
  }
  if (r == 0)
  {

   pq_endmsgread();
   break;
  }


  resetStringInfo(&reply_message);
  if (pq_getmessage(&reply_message, 0))
  {
   ereport(COMMERROR,
     (errcode(ERRCODE_PROTOCOL_VIOLATION),
      errmsg("unexpected EOF on standby connection")));
   proc_exit(0);
  }
  if (streamingDoneReceiving && firstchar != 'X')
   ereport(FATAL,
     (errcode(ERRCODE_PROTOCOL_VIOLATION),
      errmsg("unexpected standby message type \"%c\", after receiving CopyDone",
       firstchar)));


  switch (firstchar)
  {



   case 'd':
    ProcessStandbyMessage();
    received = 1;
    break;





   case 'c':
    if (!streamingDoneSending)
    {
     pq_putmessage_noblock('c', ((void*)0), 0);
     streamingDoneSending = 1;
    }

    streamingDoneReceiving = 1;
    received = 1;
    break;




   case 'X':
    proc_exit(0);

   default:
    ereport(FATAL,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("invalid standby message type \"%c\"",
        firstchar)));
  }
 }




 if (received)
 {
  last_reply_timestamp = last_processing;
  waiting_for_ping_response = 0;
 }
}
