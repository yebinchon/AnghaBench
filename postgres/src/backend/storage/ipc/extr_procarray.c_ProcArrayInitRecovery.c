
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;


 int Assert (int) ;
 scalar_t__ STANDBY_INITIALIZED ;
 int TransactionIdIsNormal (int ) ;
 int TransactionIdRetreat (int ) ;
 int latestObservedXid ;
 scalar_t__ standbyState ;

void
ProcArrayInitRecovery(TransactionId initializedUptoXID)
{
 Assert(standbyState == STANDBY_INITIALIZED);
 Assert(TransactionIdIsNormal(initializedUptoXID));







 latestObservedXid = initializedUptoXID;
 TransactionIdRetreat(latestObservedXid);
}
