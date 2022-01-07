
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleTableSlot ;
typedef int TransactionId ;
struct TYPE_3__ {int es_snapshot; } ;
typedef int Relation ;
typedef TYPE_1__ EState ;
typedef int Datum ;


 int Assert (int) ;
 int DatumGetTransactionId (int ) ;
 int ERRCODE_T_R_SERIALIZATION_FAILURE ;
 int ERROR ;
 int IsolationUsesXactSnapshot () ;
 int MinTransactionIdAttributeNumber ;
 int TransactionIdIsCurrentTransactionId (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int slot_getsysattr (int *,int ,int*) ;
 int table_tuple_satisfies_snapshot (int ,int *,int ) ;

__attribute__((used)) static void
ExecCheckTupleVisible(EState *estate,
       Relation rel,
       TupleTableSlot *slot)
{
 if (!IsolationUsesXactSnapshot())
  return;

 if (!table_tuple_satisfies_snapshot(rel, slot, estate->es_snapshot))
 {
  Datum xminDatum;
  TransactionId xmin;
  bool isnull;

  xminDatum = slot_getsysattr(slot, MinTransactionIdAttributeNumber, &isnull);
  Assert(!isnull);
  xmin = DatumGetTransactionId(xminDatum);







  if (!TransactionIdIsCurrentTransactionId(xmin))
   ereport(ERROR,
     (errcode(ERRCODE_T_R_SERIALIZATION_FAILURE),
      errmsg("could not serialize access due to concurrent update")));
 }
}
