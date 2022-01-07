
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ndeps; TYPE_1__** deps; } ;
struct TYPE_6__ {int nattributes; scalar_t__ degree; } ;
typedef int StatisticExtInfo ;
typedef TYPE_1__ MVDependency ;
typedef TYPE_2__ MVDependencies ;
typedef int Bitmapset ;


 int bms_num_members (int *) ;
 scalar_t__ dependency_is_fully_matched (TYPE_1__*,int *) ;

__attribute__((used)) static MVDependency *
find_strongest_dependency(StatisticExtInfo *stats, MVDependencies *dependencies,
        Bitmapset *attnums)
{
 int i;
 MVDependency *strongest = ((void*)0);


 int nattnums = bms_num_members(attnums);






 for (i = 0; i < dependencies->ndeps; i++)
 {
  MVDependency *dependency = dependencies->deps[i];





  if (dependency->nattributes > nattnums)
   continue;

  if (strongest)
  {

   if (dependency->nattributes < strongest->nattributes)
    continue;


   if (strongest->nattributes == dependency->nattributes &&
    strongest->degree > dependency->degree)
    continue;
  }






  if (dependency_is_fully_matched(dependency, attnums))
   strongest = dependency;
 }

 return strongest;
}
