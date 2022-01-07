
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_5__ {char* data; int len; } ;
typedef TYPE_1__* StringInfo ;


 int Assert (int) ;
 int COMMERROR ;
 scalar_t__ EOF ;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int PqCommReadingMsg ;
 int enlargeStringInfo (TYPE_1__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pg_ntoh32 (int) ;
 scalar_t__ pq_discardbytes (int) ;
 scalar_t__ pq_getbytes (char*,int) ;
 int resetStringInfo (TYPE_1__*) ;

int
pq_getmessage(StringInfo s, int maxlen)
{
 int32 len;

 Assert(PqCommReadingMsg);

 resetStringInfo(s);


 if (pq_getbytes((char *) &len, 4) == EOF)
 {
  ereport(COMMERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("unexpected EOF within message length word")));
  return EOF;
 }

 len = pg_ntoh32(len);

 if (len < 4 ||
  (maxlen > 0 && len > maxlen))
 {
  ereport(COMMERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("invalid message length")));
  return EOF;
 }

 len -= 4;

 if (len > 0)
 {





  PG_TRY();
  {
   enlargeStringInfo(s, len);
  }
  PG_CATCH();
  {
   if (pq_discardbytes(len) == EOF)
    ereport(COMMERROR,
      (errcode(ERRCODE_PROTOCOL_VIOLATION),
       errmsg("incomplete message from client")));


   PqCommReadingMsg = 0;
   PG_RE_THROW();
  }
  PG_END_TRY();


  if (pq_getbytes(s->data, len) == EOF)
  {
   ereport(COMMERROR,
     (errcode(ERRCODE_PROTOCOL_VIOLATION),
      errmsg("incomplete message from client")));
   return EOF;
  }
  s->len = len;

  s->data[len] = '\0';
 }


 PqCommReadingMsg = 0;

 return 0;
}
