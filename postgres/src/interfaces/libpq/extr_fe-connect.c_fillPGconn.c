
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ connofs; scalar_t__ keyword; } ;
typedef TYPE_1__ internalPQconninfoOption ;
struct TYPE_6__ {int errorMessage; } ;
typedef int PQconninfoOption ;
typedef TYPE_2__ PGconn ;


 TYPE_1__* PQconninfoOptions ;
 char* conninfo_getval (int *,scalar_t__) ;
 int free (char*) ;
 int libpq_gettext (char*) ;
 int printfPQExpBuffer (int *,int ) ;
 char* strdup (char const*) ;

__attribute__((used)) static bool
fillPGconn(PGconn *conn, PQconninfoOption *connOptions)
{
 const internalPQconninfoOption *option;

 for (option = PQconninfoOptions; option->keyword; option++)
 {
  if (option->connofs >= 0)
  {
   const char *tmp = conninfo_getval(connOptions, option->keyword);

   if (tmp)
   {
    char **connmember = (char **) ((char *) conn + option->connofs);

    if (*connmember)
     free(*connmember);
    *connmember = strdup(tmp);
    if (*connmember == ((void*)0))
    {
     printfPQExpBuffer(&conn->errorMessage,
           libpq_gettext("out of memory\n"));
     return 0;
    }
   }
  }
 }

 return 1;
}
