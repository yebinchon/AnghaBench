
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int RelcacheInitFileInval; int CurrentCmdInvalidMsgs; } ;
typedef scalar_t__ Oid ;


 int AddRelcacheInvalidationMessage (int *,scalar_t__,scalar_t__) ;
 int GetCurrentCommandId (int) ;
 scalar_t__ InvalidOid ;
 scalar_t__ RelationIdIsInInitFile (scalar_t__) ;
 TYPE_1__* transInvalInfo ;

__attribute__((used)) static void
RegisterRelcacheInvalidation(Oid dbId, Oid relId)
{
 AddRelcacheInvalidationMessage(&transInvalInfo->CurrentCmdInvalidMsgs,
           dbId, relId);







 (void) GetCurrentCommandId(1);







 if (relId == InvalidOid || RelationIdIsInInitFile(relId))
  transInvalInfo->RelcacheInitFileInval = 1;
}
