
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef void* XLogRecPtr ;
typedef void* TimestampTz ;
typedef int Size ;


 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERROR ;
 int ProcessWalSndrMessage (void*,void*) ;
 int XLogWalRcvSendReply (int,int) ;
 int XLogWalRcvWrite (char*,int,void*) ;
 int appendBinaryStringInfo (int *,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg_internal (char*,...) ;
 int incoming_message ;
 int pq_getmsgbyte (int *) ;
 void* pq_getmsgint64 (int *) ;
 int resetStringInfo (int *) ;

__attribute__((used)) static void
XLogWalRcvProcessMsg(unsigned char type, char *buf, Size len)
{
 int hdrlen;
 XLogRecPtr dataStart;
 XLogRecPtr walEnd;
 TimestampTz sendTime;
 bool replyRequested;

 resetStringInfo(&incoming_message);

 switch (type)
 {
  case 'w':
   {

    hdrlen = sizeof(int64) + sizeof(int64) + sizeof(int64);
    if (len < hdrlen)
     ereport(ERROR,
       (errcode(ERRCODE_PROTOCOL_VIOLATION),
        errmsg_internal("invalid WAL message received from primary")));
    appendBinaryStringInfo(&incoming_message, buf, hdrlen);


    dataStart = pq_getmsgint64(&incoming_message);
    walEnd = pq_getmsgint64(&incoming_message);
    sendTime = pq_getmsgint64(&incoming_message);
    ProcessWalSndrMessage(walEnd, sendTime);

    buf += hdrlen;
    len -= hdrlen;
    XLogWalRcvWrite(buf, len, dataStart);
    break;
   }
  case 'k':
   {

    hdrlen = sizeof(int64) + sizeof(int64) + sizeof(char);
    if (len != hdrlen)
     ereport(ERROR,
       (errcode(ERRCODE_PROTOCOL_VIOLATION),
        errmsg_internal("invalid keepalive message received from primary")));
    appendBinaryStringInfo(&incoming_message, buf, hdrlen);


    walEnd = pq_getmsgint64(&incoming_message);
    sendTime = pq_getmsgint64(&incoming_message);
    replyRequested = pq_getmsgbyte(&incoming_message);

    ProcessWalSndrMessage(walEnd, sendTime);


    if (replyRequested)
     XLogWalRcvSendReply(1, 0);
    break;
   }
  default:
   ereport(ERROR,
     (errcode(ERRCODE_PROTOCOL_VIOLATION),
      errmsg_internal("invalid replication message type %d",
          type)));
 }
}
