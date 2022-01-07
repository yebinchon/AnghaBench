
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PQconninfoOption ;
typedef int PQExpBufferData ;


 scalar_t__ PQExpBufferDataBroken (int ) ;
 int PQconninfoFree (int *) ;
 int conninfo_add_defaults (int *,int *) ;
 int * conninfo_init (int *) ;
 int initPQExpBuffer (int *) ;
 int termPQExpBuffer (int *) ;

PQconninfoOption *
PQconndefaults(void)
{
 PQExpBufferData errorBuf;
 PQconninfoOption *connOptions;


 initPQExpBuffer(&errorBuf);
 if (PQExpBufferDataBroken(errorBuf))
  return ((void*)0);

 connOptions = conninfo_init(&errorBuf);
 if (connOptions != ((void*)0))
 {

  if (!conninfo_add_defaults(connOptions, ((void*)0)))
  {
   PQconninfoFree(connOptions);
   connOptions = ((void*)0);
  }
 }

 termPQExpBuffer(&errorBuf);
 return connOptions;
}
