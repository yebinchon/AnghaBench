
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMMERROR ;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int ProcessStandbyHSFeedbackMessage () ;
 int ProcessStandbyReplyMessage () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char) ;
 char pq_getmsgbyte (int *) ;
 int proc_exit (int ) ;
 int reply_message ;

__attribute__((used)) static void
ProcessStandbyMessage(void)
{
 char msgtype;




 msgtype = pq_getmsgbyte(&reply_message);

 switch (msgtype)
 {
  case 'r':
   ProcessStandbyReplyMessage();
   break;

  case 'h':
   ProcessStandbyHSFeedbackMessage();
   break;

  default:
   ereport(COMMERROR,
     (errcode(ERRCODE_PROTOCOL_VIOLATION),
      errmsg("unexpected message type \"%c\"", msgtype)));
   proc_exit(0);
 }
}
