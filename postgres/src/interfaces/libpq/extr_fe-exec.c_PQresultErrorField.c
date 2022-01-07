
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int code; char* contents; struct TYPE_5__* next; } ;
struct TYPE_4__ {TYPE_2__* errFields; } ;
typedef TYPE_1__ PGresult ;
typedef TYPE_2__ PGMessageField ;



char *
PQresultErrorField(const PGresult *res, int fieldcode)
{
 PGMessageField *pfield;

 if (!res)
  return ((void*)0);
 for (pfield = res->errFields; pfield != ((void*)0); pfield = pfield->next)
 {
  if (pfield->code == fieldcode)
   return pfield->contents;
 }
 return ((void*)0);
}
