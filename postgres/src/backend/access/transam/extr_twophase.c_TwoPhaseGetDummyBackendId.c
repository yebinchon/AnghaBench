
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_3__ {int dummyBackendId; } ;
typedef TYPE_1__* GlobalTransaction ;
typedef int BackendId ;


 TYPE_1__* TwoPhaseGetGXact (int ,int) ;

BackendId
TwoPhaseGetDummyBackendId(TransactionId xid, bool lock_held)
{
 GlobalTransaction gxact = TwoPhaseGetGXact(xid, lock_held);

 return gxact->dummyBackendId;
}
