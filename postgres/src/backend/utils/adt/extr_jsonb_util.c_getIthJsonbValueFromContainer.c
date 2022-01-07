
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_7__ {int * children; } ;
typedef int JsonbValue ;
typedef TYPE_1__ JsonbContainer ;


 int ERROR ;
 int JsonContainerIsArray (TYPE_1__*) ;
 size_t JsonContainerSize (TYPE_1__*) ;
 int elog (int ,char*) ;
 int fillJsonbValue (TYPE_1__*,size_t,char*,int ,int *) ;
 int getJsonbOffset (TYPE_1__*,size_t) ;
 int * palloc (int) ;

JsonbValue *
getIthJsonbValueFromContainer(JsonbContainer *container, uint32 i)
{
 JsonbValue *result;
 char *base_addr;
 uint32 nelements;

 if (!JsonContainerIsArray(container))
  elog(ERROR, "not a jsonb array");

 nelements = JsonContainerSize(container);
 base_addr = (char *) &container->children[nelements];

 if (i >= nelements)
  return ((void*)0);

 result = palloc(sizeof(JsonbValue));

 fillJsonbValue(container, i, base_addr,
       getJsonbOffset(container, i),
       result);

 return result;
}
