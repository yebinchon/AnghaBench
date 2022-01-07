
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VirtualTransactionId ;
typedef int Oid ;


 int * GetConflictingVirtualXIDs (int ,int ) ;
 int InvalidOid ;
 int InvalidTransactionId ;
 int PROCSIG_RECOVERY_CONFLICT_TABLESPACE ;
 int ResolveRecoveryConflictWithVirtualXIDs (int *,int ) ;

void
ResolveRecoveryConflictWithTablespace(Oid tsid)
{
 VirtualTransactionId *temp_file_users;
 temp_file_users = GetConflictingVirtualXIDs(InvalidTransactionId,
            InvalidOid);
 ResolveRecoveryConflictWithVirtualXIDs(temp_file_users,
             PROCSIG_RECOVERY_CONFLICT_TABLESPACE);
}
