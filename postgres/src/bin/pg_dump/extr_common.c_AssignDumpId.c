
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dumpId; int ext_member; scalar_t__ allocDeps; scalar_t__ nDeps; int * dependencies; int dump; int * namespace; int * name; } ;
typedef TYPE_1__ DumpableObject ;


 int DUMP_COMPONENT_ALL ;
 int allocedDumpIds ;
 int catalogIdMapValid ;
 TYPE_1__** dumpIdMap ;
 int lastDumpId ;
 int memset (TYPE_1__**,int ,int) ;
 scalar_t__ pg_malloc (int) ;
 scalar_t__ pg_realloc (TYPE_1__**,int) ;

void
AssignDumpId(DumpableObject *dobj)
{
 dobj->dumpId = ++lastDumpId;
 dobj->name = ((void*)0);
 dobj->namespace = ((void*)0);
 dobj->dump = DUMP_COMPONENT_ALL;
 dobj->ext_member = 0;
 dobj->dependencies = ((void*)0);
 dobj->nDeps = 0;
 dobj->allocDeps = 0;

 while (dobj->dumpId >= allocedDumpIds)
 {
  int newAlloc;

  if (allocedDumpIds <= 0)
  {
   newAlloc = 256;
   dumpIdMap = (DumpableObject **)
    pg_malloc(newAlloc * sizeof(DumpableObject *));
  }
  else
  {
   newAlloc = allocedDumpIds * 2;
   dumpIdMap = (DumpableObject **)
    pg_realloc(dumpIdMap, newAlloc * sizeof(DumpableObject *));
  }
  memset(dumpIdMap + allocedDumpIds, 0,
      (newAlloc - allocedDumpIds) * sizeof(DumpableObject *));
  allocedDumpIds = newAlloc;
 }
 dumpIdMap[dobj->dumpId] = dobj;


 catalogIdMapValid = 0;
}
