
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 int EOF ;
 scalar_t__ PQputCopyData (int *,char const*,int) ;

int
PQputnbytes(PGconn *conn, const char *buffer, int nbytes)
{
 if (PQputCopyData(conn, buffer, nbytes) > 0)
  return 0;
 else
  return EOF;
}
