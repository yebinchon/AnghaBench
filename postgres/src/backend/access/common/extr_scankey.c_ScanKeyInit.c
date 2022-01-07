
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sk_func; int sk_argument; int sk_collation; int sk_subtype; int sk_strategy; int sk_attno; scalar_t__ sk_flags; } ;
typedef int StrategyNumber ;
typedef TYPE_1__* ScanKey ;
typedef int RegProcedure ;
typedef int Datum ;
typedef int AttrNumber ;


 int C_COLLATION_OID ;
 int InvalidOid ;
 int fmgr_info (int ,int *) ;

void
ScanKeyInit(ScanKey entry,
   AttrNumber attributeNumber,
   StrategyNumber strategy,
   RegProcedure procedure,
   Datum argument)
{
 entry->sk_flags = 0;
 entry->sk_attno = attributeNumber;
 entry->sk_strategy = strategy;
 entry->sk_subtype = InvalidOid;
 entry->sk_collation = C_COLLATION_OID;
 entry->sk_argument = argument;
 fmgr_info(procedure, &entry->sk_func);
}
