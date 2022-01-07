
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* data; } ;
typedef int PQconninfoOption ;
typedef TYPE_1__ PQExpBufferData ;


 scalar_t__ PQExpBufferDataBroken (TYPE_1__) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int * parse_connection_string (char const*,TYPE_1__*,int) ;
 int termPQExpBuffer (TYPE_1__*) ;

PQconninfoOption *
PQconninfoParse(const char *conninfo, char **errmsg)
{
 PQExpBufferData errorBuf;
 PQconninfoOption *connOptions;

 if (errmsg)
  *errmsg = ((void*)0);
 initPQExpBuffer(&errorBuf);
 if (PQExpBufferDataBroken(errorBuf))
  return ((void*)0);
 connOptions = parse_connection_string(conninfo, &errorBuf, 0);
 if (connOptions == ((void*)0) && errmsg)
  *errmsg = errorBuf.data;
 else
  termPQExpBuffer(&errorBuf);
 return connOptions;
}
