
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ObjectAddress ;
typedef int DependencyType ;


 int recordMultipleDependencies (int const*,int const*,int,int ) ;

void
recordDependencyOn(const ObjectAddress *depender,
       const ObjectAddress *referenced,
       DependencyType behavior)
{
 recordMultipleDependencies(depender, referenced, 1, behavior);
}
