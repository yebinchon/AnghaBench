
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ format; scalar_t__ name; } ;
struct TYPE_9__ {int numAttributes; int binary; TYPE_2__* attDescs; scalar_t__ null_field; } ;
typedef TYPE_1__ PGresult ;
typedef TYPE_2__ PGresAttDesc ;


 scalar_t__ PQresultAlloc (TYPE_1__*,int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 scalar_t__ pqResultStrdup (TYPE_1__*,scalar_t__) ;

int
PQsetResultAttrs(PGresult *res, int numAttributes, PGresAttDesc *attDescs)
{
 int i;


 if (!res || res->numAttributes > 0)
  return 0;


 if (numAttributes <= 0 || !attDescs)
  return 1;

 res->attDescs = (PGresAttDesc *)
  PQresultAlloc(res, numAttributes * sizeof(PGresAttDesc));

 if (!res->attDescs)
  return 0;

 res->numAttributes = numAttributes;
 memcpy(res->attDescs, attDescs, numAttributes * sizeof(PGresAttDesc));


 res->binary = 1;
 for (i = 0; i < res->numAttributes; i++)
 {
  if (res->attDescs[i].name)
   res->attDescs[i].name = pqResultStrdup(res, res->attDescs[i].name);
  else
   res->attDescs[i].name = res->null_field;

  if (!res->attDescs[i].name)
   return 0;

  if (res->attDescs[i].format == 0)
   res->binary = 0;
 }

 return 1;
}
