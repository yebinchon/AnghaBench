
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ connofs; scalar_t__ keyword; } ;
typedef TYPE_1__ internalPQconninfoOption ;
typedef int PQconninfoOption ;
typedef int PQExpBufferData ;
typedef int PGconn ;


 scalar_t__ PQExpBufferDataBroken (int ) ;
 TYPE_1__* PQconninfoOptions ;
 int * conninfo_init (int *) ;
 int conninfo_storeval (int *,scalar_t__,char*,int *,int,int) ;
 int initPQExpBuffer (int *) ;
 int termPQExpBuffer (int *) ;

PQconninfoOption *
PQconninfo(PGconn *conn)
{
 PQExpBufferData errorBuf;
 PQconninfoOption *connOptions;

 if (conn == ((void*)0))
  return ((void*)0);


 initPQExpBuffer(&errorBuf);
 if (PQExpBufferDataBroken(errorBuf))
  return ((void*)0);

 connOptions = conninfo_init(&errorBuf);

 if (connOptions != ((void*)0))
 {
  const internalPQconninfoOption *option;

  for (option = PQconninfoOptions; option->keyword; option++)
  {
   char **connmember;

   if (option->connofs < 0)
    continue;

   connmember = (char **) ((char *) conn + option->connofs);

   if (*connmember)
    conninfo_storeval(connOptions, option->keyword, *connmember,
          &errorBuf, 1, 0);
  }
 }

 termPQExpBuffer(&errorBuf);

 return connOptions;
}
