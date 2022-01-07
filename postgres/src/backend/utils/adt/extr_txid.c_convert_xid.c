
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64 ;
typedef int txid ;
struct TYPE_3__ {int last_xid; scalar_t__ epoch; } ;
typedef TYPE_1__ TxidEpoch ;
typedef int TransactionId ;


 scalar_t__ TransactionIdFollows (int,int) ;
 int TransactionIdIsNormal (int) ;
 scalar_t__ TransactionIdPrecedes (int,int) ;

__attribute__((used)) static txid
convert_xid(TransactionId xid, const TxidEpoch *state)
{
 uint64 epoch;


 if (!TransactionIdIsNormal(xid))
  return (txid) xid;


 epoch = (uint64) state->epoch;
 if (xid > state->last_xid &&
  TransactionIdPrecedes(xid, state->last_xid))
  epoch--;
 else if (xid < state->last_xid &&
    TransactionIdFollows(xid, state->last_xid))
  epoch++;

 return (epoch << 32) | xid;
}
