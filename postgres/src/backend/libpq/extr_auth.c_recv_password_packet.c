
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int proto; } ;
struct TYPE_6__ {char* data; int len; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ Port ;


 int DEBUG5 ;
 int EOF ;
 int ERRCODE_INVALID_PASSWORD ;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERROR ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int initStringInfo (TYPE_1__*) ;
 int pfree (char*) ;
 int pq_getbyte () ;
 scalar_t__ pq_getmessage (TYPE_1__*,int) ;
 int pq_peekbyte () ;
 int pq_startmsgread () ;
 int strlen (char*) ;

__attribute__((used)) static char *
recv_password_packet(Port *port)
{
 StringInfoData buf;

 pq_startmsgread();
 if (PG_PROTOCOL_MAJOR(port->proto) >= 3)
 {

  int mtype;

  mtype = pq_getbyte();
  if (mtype != 'p')
  {






   if (mtype != EOF)
    ereport(ERROR,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("expected password response, got message type %d",
        mtype)));
   return ((void*)0);
  }
 }
 else
 {

  if (pq_peekbyte() == EOF)
   return ((void*)0);
 }

 initStringInfo(&buf);
 if (pq_getmessage(&buf, 1000))
 {

  pfree(buf.data);
  return ((void*)0);
 }






 if (strlen(buf.data) + 1 != buf.len)
  ereport(ERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("invalid password packet size")));
 if (buf.len == 1)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PASSWORD),
     errmsg("empty password returned by client")));


 elog(DEBUG5, "received password packet");






 return buf.data;
}
