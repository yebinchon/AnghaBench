
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;


 int RelationGetRelationName (int ) ;
 int WARNING ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static void
PrintRelCacheLeakWarning(Relation rel)
{
 elog(WARNING, "relcache reference leak: relation \"%s\" not closed",
   RelationGetRelationName(rel));
}
