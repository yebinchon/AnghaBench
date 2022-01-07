
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int epoch; int last_xid; } ;
typedef TYPE_1__ TxidEpoch ;
typedef int FullTransactionId ;


 int EpochFromFullTransactionId (int ) ;
 int ReadNextFullTransactionId () ;
 int XidFromFullTransactionId (int ) ;

__attribute__((used)) static void
load_xid_epoch(TxidEpoch *state)
{
 FullTransactionId fullXid = ReadNextFullTransactionId();

 state->last_xid = XidFromFullTransactionId(fullXid);
 state->epoch = EpochFromFullTransactionId(fullXid);
}
