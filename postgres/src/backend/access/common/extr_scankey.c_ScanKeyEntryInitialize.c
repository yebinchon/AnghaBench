
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sk_flags; int sk_func; int sk_argument; void* sk_collation; void* sk_subtype; int sk_strategy; int sk_attno; } ;
typedef int StrategyNumber ;
typedef TYPE_1__* ScanKey ;
typedef int RegProcedure ;
typedef void* Oid ;
typedef int Datum ;
typedef int AttrNumber ;


 int Assert (int) ;
 int MemSet (int *,int ,int) ;
 scalar_t__ RegProcedureIsValid (int ) ;
 int SK_SEARCHNOTNULL ;
 int SK_SEARCHNULL ;
 int fmgr_info (int ,int *) ;

void
ScanKeyEntryInitialize(ScanKey entry,
        int flags,
        AttrNumber attributeNumber,
        StrategyNumber strategy,
        Oid subtype,
        Oid collation,
        RegProcedure procedure,
        Datum argument)
{
 entry->sk_flags = flags;
 entry->sk_attno = attributeNumber;
 entry->sk_strategy = strategy;
 entry->sk_subtype = subtype;
 entry->sk_collation = collation;
 entry->sk_argument = argument;
 if (RegProcedureIsValid(procedure))
 {
  fmgr_info(procedure, &entry->sk_func);
 }
 else
 {
  Assert(flags & (SK_SEARCHNULL | SK_SEARCHNOTNULL));
  MemSet(&entry->sk_func, 0, sizeof(entry->sk_func));
 }
}
