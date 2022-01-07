
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_4__ {scalar_t__ Pfdebug; int noticeHooks; } ;
typedef TYPE_1__ PGconn ;


 int EOF ;
 int fprintf (scalar_t__,char*,unsigned long,int) ;
 int pg_hton16 (int ) ;
 int pg_hton32 (int ) ;
 int pqInternalNotice (int *,char*,unsigned long) ;
 int pqPutMsgBytes (char const*,int,TYPE_1__*) ;

int
pqPutInt(int value, size_t bytes, PGconn *conn)
{
 uint16 tmp2;
 uint32 tmp4;

 switch (bytes)
 {
  case 2:
   tmp2 = pg_hton16((uint16) value);
   if (pqPutMsgBytes((const char *) &tmp2, 2, conn))
    return EOF;
   break;
  case 4:
   tmp4 = pg_hton32((uint32) value);
   if (pqPutMsgBytes((const char *) &tmp4, 4, conn))
    return EOF;
   break;
  default:
   pqInternalNotice(&conn->noticeHooks,
        "integer of size %lu not supported by pqPutInt",
        (unsigned long) bytes);
   return EOF;
 }

 if (conn->Pfdebug)
  fprintf(conn->Pfdebug, "To backend (%lu#)> %d\n", (unsigned long) bytes, value);

 return 0;
}
