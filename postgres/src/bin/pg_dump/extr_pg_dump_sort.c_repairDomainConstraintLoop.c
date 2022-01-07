
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dumpId; } ;
typedef TYPE_1__ DumpableObject ;


 int removeObjectDependency (TYPE_1__*,int ) ;

__attribute__((used)) static void
repairDomainConstraintLoop(DumpableObject *domainobj,
         DumpableObject *constraintobj)
{

 removeObjectDependency(constraintobj, domainobj->dumpId);
}
