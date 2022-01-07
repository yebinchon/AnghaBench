
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * val; int * keyword; } ;
typedef TYPE_1__ PQconninfoOption ;
typedef int PGconn ;


 TYPE_1__* PQconninfo (int *) ;
 int PQconninfoFree (TYPE_1__*) ;
 scalar_t__ strcmp (int *,char*) ;

__attribute__((used)) static bool
has_hostaddr(PGconn *conn)
{
 bool used = 0;
 PQconninfoOption *ciopt = PQconninfo(conn);

 for (PQconninfoOption *p = ciopt; p->keyword != ((void*)0); p++)
 {
  if (strcmp(p->keyword, "hostaddr") == 0 && p->val != ((void*)0))
  {
   used = 1;
   break;
  }
 }

 PQconninfoFree(ciopt);
 return used;
}
