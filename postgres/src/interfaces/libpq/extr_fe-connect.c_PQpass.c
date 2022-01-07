
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t whichhost; char* pgpass; TYPE_1__* connhost; } ;
struct TYPE_4__ {char* password; } ;
typedef TYPE_2__ PGconn ;



char *
PQpass(const PGconn *conn)
{
 char *password = ((void*)0);

 if (!conn)
  return ((void*)0);
 if (conn->connhost != ((void*)0))
  password = conn->connhost[conn->whichhost].password;
 if (password == ((void*)0))
  password = conn->pgpass;

 if (password == ((void*)0))
  password = "";
 return password;
}
