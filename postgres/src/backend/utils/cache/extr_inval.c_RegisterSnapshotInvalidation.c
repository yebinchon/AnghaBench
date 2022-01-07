
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CurrentCmdInvalidMsgs; } ;
typedef int Oid ;


 int AddSnapshotInvalidationMessage (int *,int ,int ) ;
 TYPE_1__* transInvalInfo ;

__attribute__((used)) static void
RegisterSnapshotInvalidation(Oid dbId, Oid relId)
{
 AddSnapshotInvalidationMessage(&transInvalInfo->CurrentCmdInvalidMsgs,
           dbId, relId);
}
