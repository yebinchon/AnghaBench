
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* value; int name; struct TYPE_4__* next; } ;
typedef TYPE_1__ pgParameterStatus ;
struct TYPE_5__ {TYPE_1__* pstatus; } ;
typedef TYPE_2__ PGconn ;


 scalar_t__ strcmp (int ,char const*) ;

const char *
PQparameterStatus(const PGconn *conn, const char *paramName)
{
 const pgParameterStatus *pstatus;

 if (!conn || !paramName)
  return ((void*)0);
 for (pstatus = conn->pstatus; pstatus != ((void*)0); pstatus = pstatus->next)
 {
  if (strcmp(pstatus->name, paramName) == 0)
   return pstatus->value;
 }
 return ((void*)0);
}
