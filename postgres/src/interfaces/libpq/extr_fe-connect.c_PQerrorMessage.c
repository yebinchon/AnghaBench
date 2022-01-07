
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* data; } ;
struct TYPE_5__ {TYPE_1__ errorMessage; } ;
typedef TYPE_2__ PGconn ;


 char* libpq_gettext (char*) ;

char *
PQerrorMessage(const PGconn *conn)
{
 if (!conn)
  return libpq_gettext("connection pointer is NULL\n");

 return conn->errorMessage.data;
}
