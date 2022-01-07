
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t whichhost; TYPE_1__* connhost; } ;
struct TYPE_4__ {char* port; } ;
typedef TYPE_2__ PGconn ;



char *
PQport(const PGconn *conn)
{
 if (!conn)
  return ((void*)0);

 if (conn->connhost != ((void*)0))
  return conn->connhost[conn->whichhost].port;

 return "";
}
