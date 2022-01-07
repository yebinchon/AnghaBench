
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ relkind; int postponed_def; } ;
typedef TYPE_1__ TableInfo ;
struct TYPE_7__ {scalar_t__ objType; int dumpId; } ;
typedef TYPE_2__ DumpableObject ;


 scalar_t__ DO_TABLE ;
 scalar_t__ RELKIND_MATVIEW ;
 int removeObjectDependency (TYPE_2__*,int ) ;

__attribute__((used)) static void
repairMatViewBoundaryMultiLoop(DumpableObject *boundaryobj,
          DumpableObject *nextobj)
{

 removeObjectDependency(boundaryobj, nextobj->dumpId);

 if (nextobj->objType == DO_TABLE)
 {
  TableInfo *nextinfo = (TableInfo *) nextobj;

  if (nextinfo->relkind == RELKIND_MATVIEW)
   nextinfo->postponed_def = 1;
 }
}
