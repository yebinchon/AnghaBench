
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numrefs; int refs; } ;
typedef TYPE_1__ ObjectAddresses ;
typedef int ObjectAddress ;
typedef int DependencyType ;


 int eliminate_duplicate_dependencies (TYPE_1__*) ;
 int recordMultipleDependencies (int const*,int ,int ,int ) ;

void
record_object_address_dependencies(const ObjectAddress *depender,
           ObjectAddresses *referenced,
           DependencyType behavior)
{
 eliminate_duplicate_dependencies(referenced);
 recordMultipleDependencies(depender,
          referenced->refs, referenced->numrefs,
          behavior);
}
