
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_6__ {char* data; int len; } ;
typedef TYPE_1__* StringInfo ;


 int EOF ;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int FATAL ;
 int appendBinaryStringInfo (TYPE_1__*,char*,int) ;
 int enlargeStringInfo (TYPE_1__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 int pg_ntoh32 (int ) ;
 scalar_t__ pq_getbytes (char*,int) ;
 scalar_t__ pq_getstring (TYPE_1__*) ;

int
GetOldFunctionMessage(StringInfo buf)
{
 int32 ibuf;
 int nargs;


 if (pq_getstring(buf))
  return EOF;

 if (pq_getbytes((char *) &ibuf, 4))
  return EOF;
 appendBinaryStringInfo(buf, (char *) &ibuf, 4);

 if (pq_getbytes((char *) &ibuf, 4))
  return EOF;
 appendBinaryStringInfo(buf, (char *) &ibuf, 4);
 nargs = pg_ntoh32(ibuf);

 while (nargs-- > 0)
 {
  int argsize;


  if (pq_getbytes((char *) &ibuf, 4))
   return EOF;
  appendBinaryStringInfo(buf, (char *) &ibuf, 4);
  argsize = pg_ntoh32(ibuf);
  if (argsize < -1)
  {

   ereport(FATAL,
     (errcode(ERRCODE_PROTOCOL_VIOLATION),
      errmsg("invalid argument size %d in function call message",
       argsize)));
  }

  if (argsize > 0)
  {

   enlargeStringInfo(buf, argsize);

   if (pq_getbytes(buf->data + buf->len, argsize))
    return EOF;
   buf->len += argsize;

   buf->data[buf->len] = '\0';
  }
 }
 return 0;
}
