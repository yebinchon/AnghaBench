
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sk_flags; int sk_func; int sk_argument; void* sk_collation; void* sk_subtype; int sk_strategy; int sk_attno; } ;
typedef int StrategyNumber ;
typedef TYPE_1__* ScanKey ;
typedef void* Oid ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef int AttrNumber ;


 int CurrentMemoryContext ;
 int fmgr_info_copy (int *,int *,int ) ;

void
ScanKeyEntryInitializeWithInfo(ScanKey entry,
          int flags,
          AttrNumber attributeNumber,
          StrategyNumber strategy,
          Oid subtype,
          Oid collation,
          FmgrInfo *finfo,
          Datum argument)
{
 entry->sk_flags = flags;
 entry->sk_attno = attributeNumber;
 entry->sk_strategy = strategy;
 entry->sk_subtype = subtype;
 entry->sk_collation = collation;
 entry->sk_argument = argument;
 fmgr_info_copy(&entry->sk_func, finfo, CurrentMemoryContext);
}
