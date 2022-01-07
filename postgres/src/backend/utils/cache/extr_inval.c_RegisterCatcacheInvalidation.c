
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int CurrentCmdInvalidMsgs; } ;
typedef int Oid ;


 int AddCatcacheInvalidationMessage (int *,int,int ,int ) ;
 TYPE_1__* transInvalInfo ;

__attribute__((used)) static void
RegisterCatcacheInvalidation(int cacheId,
        uint32 hashValue,
        Oid dbId)
{
 AddCatcacheInvalidationMessage(&transInvalInfo->CurrentCmdInvalidMsgs,
           cacheId, hashValue, dbId);
}
