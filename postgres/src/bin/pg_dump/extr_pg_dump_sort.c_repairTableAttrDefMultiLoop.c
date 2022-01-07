
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int separate; } ;
struct TYPE_7__ {int dumpId; } ;
typedef TYPE_1__ DumpableObject ;
typedef TYPE_2__ AttrDefInfo ;


 int addObjectDependency (TYPE_1__*,int ) ;
 int removeObjectDependency (TYPE_1__*,int ) ;

__attribute__((used)) static void
repairTableAttrDefMultiLoop(DumpableObject *tableobj,
       DumpableObject *attrdefobj)
{

 removeObjectDependency(tableobj, attrdefobj->dumpId);

 ((AttrDefInfo *) attrdefobj)->separate = 1;

 addObjectDependency(attrdefobj, tableobj->dumpId);
}
