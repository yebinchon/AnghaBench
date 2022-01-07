
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pversion; } ;
typedef TYPE_1__ PGconn ;


 int EOF ;
 int PG_PROTOCOL_MAJOR (int ) ;
 int pqGetline2 (TYPE_1__*,char*,int) ;
 int pqGetline3 (TYPE_1__*,char*,int) ;

int
PQgetline(PGconn *conn, char *s, int maxlen)
{
 if (!s || maxlen <= 0)
  return EOF;
 *s = '\0';

 if (maxlen < 3)
  return EOF;

 if (!conn)
  return EOF;

 if (PG_PROTOCOL_MAJOR(conn->pversion) >= 3)
  return pqGetline3(conn, s, maxlen);
 else
  return pqGetline2(conn, s, maxlen);
}
