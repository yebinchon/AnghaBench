
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ fn_xmin; int fn_tid; } ;
struct TYPE_8__ {int oid; } ;
struct TYPE_7__ {int t_self; int t_data; } ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_proc ;
typedef TYPE_3__ CFuncHashTabEntry ;


 int * CFuncHash ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HASH_FIND ;
 scalar_t__ HeapTupleHeaderGetRawXmin (int ) ;
 scalar_t__ ItemPointerEquals (int *,int *) ;
 scalar_t__ hash_search (int *,int *,int ,int *) ;

__attribute__((used)) static CFuncHashTabEntry *
lookup_C_func(HeapTuple procedureTuple)
{
 Oid fn_oid = ((Form_pg_proc) GETSTRUCT(procedureTuple))->oid;
 CFuncHashTabEntry *entry;

 if (CFuncHash == ((void*)0))
  return ((void*)0);
 entry = (CFuncHashTabEntry *)
  hash_search(CFuncHash,
     &fn_oid,
     HASH_FIND,
     ((void*)0));
 if (entry == ((void*)0))
  return ((void*)0);
 if (entry->fn_xmin == HeapTupleHeaderGetRawXmin(procedureTuple->t_data) &&
  ItemPointerEquals(&entry->fn_tid, &procedureTuple->t_self))
  return entry;
 return ((void*)0);
}
