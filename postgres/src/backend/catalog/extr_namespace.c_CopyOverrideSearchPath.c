
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int addTemp; int addCatalog; int schemas; } ;
typedef TYPE_1__ OverrideSearchPath ;


 int list_copy (int ) ;
 scalar_t__ palloc (int) ;

OverrideSearchPath *
CopyOverrideSearchPath(OverrideSearchPath *path)
{
 OverrideSearchPath *result;

 result = (OverrideSearchPath *) palloc(sizeof(OverrideSearchPath));
 result->schemas = list_copy(path->schemas);
 result->addCatalog = path->addCatalog;
 result->addTemp = path->addTemp;

 return result;
}
