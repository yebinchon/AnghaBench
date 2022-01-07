
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* shellType; } ;
typedef TYPE_3__ TypeInfo ;
struct TYPE_12__ {int dump; int dumpId; } ;
struct TYPE_9__ {int dump; int dumpId; } ;
struct TYPE_10__ {TYPE_1__ dobj; } ;
typedef TYPE_4__ DumpableObject ;


 int DUMP_COMPONENT_DEFINITION ;
 int addObjectDependency (TYPE_4__*,int ) ;
 int removeObjectDependency (TYPE_4__*,int ) ;

__attribute__((used)) static void
repairTypeFuncLoop(DumpableObject *typeobj, DumpableObject *funcobj)
{
 TypeInfo *typeInfo = (TypeInfo *) typeobj;


 removeObjectDependency(funcobj, typeobj->dumpId);


 if (typeInfo->shellType)
 {
  addObjectDependency(funcobj, typeInfo->shellType->dobj.dumpId);






  if (funcobj->dump)
   typeInfo->shellType->dobj.dump = funcobj->dump |
    DUMP_COMPONENT_DEFINITION;
 }
}
