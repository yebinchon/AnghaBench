
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* connip; int * connhost; } ;
typedef TYPE_1__ PGconn ;



char *
PQhostaddr(const PGconn *conn)
{
 if (!conn)
  return ((void*)0);


 if (conn->connhost != ((void*)0) && conn->connip != ((void*)0))
  return conn->connip;

 return "";
}
