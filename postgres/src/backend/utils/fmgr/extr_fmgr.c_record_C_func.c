
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int hash_ctl ;
struct TYPE_12__ {int const* inforec; int user_fn; int fn_tid; int fn_xmin; } ;
struct TYPE_11__ {int oid; } ;
struct TYPE_10__ {int keysize; int entrysize; } ;
struct TYPE_9__ {int t_self; int t_data; } ;
typedef int Pg_finfo_record ;
typedef int PGFunction ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__ HASHCTL ;
typedef TYPE_3__* Form_pg_proc ;
typedef TYPE_4__ CFuncHashTabEntry ;


 int * CFuncHash ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HASH_BLOBS ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 int HeapTupleHeaderGetRawXmin (int ) ;
 int MemSet (TYPE_2__*,int ,int) ;
 int * hash_create (char*,int,TYPE_2__*,int) ;
 scalar_t__ hash_search (int *,int *,int ,int*) ;

__attribute__((used)) static void
record_C_func(HeapTuple procedureTuple,
     PGFunction user_fn, const Pg_finfo_record *inforec)
{
 Oid fn_oid = ((Form_pg_proc) GETSTRUCT(procedureTuple))->oid;
 CFuncHashTabEntry *entry;
 bool found;


 if (CFuncHash == ((void*)0))
 {
  HASHCTL hash_ctl;

  MemSet(&hash_ctl, 0, sizeof(hash_ctl));
  hash_ctl.keysize = sizeof(Oid);
  hash_ctl.entrysize = sizeof(CFuncHashTabEntry);
  CFuncHash = hash_create("CFuncHash",
        100,
        &hash_ctl,
        HASH_ELEM | HASH_BLOBS);
 }

 entry = (CFuncHashTabEntry *)
  hash_search(CFuncHash,
     &fn_oid,
     HASH_ENTER,
     &found);

 entry->fn_xmin = HeapTupleHeaderGetRawXmin(procedureTuple->t_data);
 entry->fn_tid = procedureTuple->t_self;
 entry->user_fn = user_fn;
 entry->inforec = inforec;
}
