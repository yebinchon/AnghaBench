
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * values; } ;
typedef TYPE_1__ oidvector ;
struct TYPE_6__ {int supportProcs; int opcintype; int opcfamily; } ;
typedef int StrategyNumber ;
typedef int RegProcedure ;
typedef TYPE_2__ OpClassCacheEnt ;
typedef int Oid ;
typedef int AttrNumber ;


 int ERROR ;
 TYPE_2__* LookupOpclassInfo (int ,int) ;
 int OidIsValid (int ) ;
 int elog (int ,char*) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void
IndexSupportInitialize(oidvector *indclass,
        RegProcedure *indexSupport,
        Oid *opFamily,
        Oid *opcInType,
        StrategyNumber maxSupportNumber,
        AttrNumber maxAttributeNumber)
{
 int attIndex;

 for (attIndex = 0; attIndex < maxAttributeNumber; attIndex++)
 {
  OpClassCacheEnt *opcentry;

  if (!OidIsValid(indclass->values[attIndex]))
   elog(ERROR, "bogus pg_index tuple");


  opcentry = LookupOpclassInfo(indclass->values[attIndex],
          maxSupportNumber);


  opFamily[attIndex] = opcentry->opcfamily;
  opcInType[attIndex] = opcentry->opcintype;
  if (maxSupportNumber > 0)
   memcpy(&indexSupport[attIndex * maxSupportNumber],
       opcentry->supportProcs,
       maxSupportNumber * sizeof(RegProcedure));
 }
}
