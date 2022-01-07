
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {int domain_info; int record_io; int tupdesc; } ;
struct TYPE_13__ {int t_data; int t_tableOid; int t_self; int t_len; } ;
struct TYPE_9__ {TYPE_6__ composite; } ;
struct TYPE_10__ {scalar_t__ typcat; TYPE_1__ io; } ;
struct TYPE_12__ {int fn_mcxt; TYPE_2__ c; int argtype; } ;
struct TYPE_11__ {int tuple_store; int rec; TYPE_4__* cache; } ;
typedef TYPE_3__ PopulateRecordsetState ;
typedef TYPE_4__ PopulateRecordCache ;
typedef int JsObject ;
typedef int HeapTupleHeader ;
typedef TYPE_5__ HeapTupleData ;


 int HeapTupleHeaderGetDatum (int ) ;
 int HeapTupleHeaderGetDatumLength (int ) ;
 int InvalidOid ;
 int ItemPointerSetInvalid (int *) ;
 scalar_t__ TYPECAT_COMPOSITE_DOMAIN ;
 int domain_check (int ,int,int ,int *,int ) ;
 int populate_record (int ,int *,int ,int ,int *) ;
 int tuplestore_puttuple (int ,TYPE_5__*) ;
 int update_cached_tupdesc (TYPE_6__*,int ) ;

__attribute__((used)) static void
populate_recordset_record(PopulateRecordsetState *state, JsObject *obj)
{
 PopulateRecordCache *cache = state->cache;
 HeapTupleHeader tuphead;
 HeapTupleData tuple;


 update_cached_tupdesc(&cache->c.io.composite, cache->fn_mcxt);


 tuphead = populate_record(cache->c.io.composite.tupdesc,
         &cache->c.io.composite.record_io,
         state->rec,
         cache->fn_mcxt,
         obj);


 if (cache->c.typcat == TYPECAT_COMPOSITE_DOMAIN)
  domain_check(HeapTupleHeaderGetDatum(tuphead), 0,
      cache->argtype,
      &cache->c.io.composite.domain_info,
      cache->fn_mcxt);


 tuple.t_len = HeapTupleHeaderGetDatumLength(tuphead);
 ItemPointerSetInvalid(&(tuple.t_self));
 tuple.t_tableOid = InvalidOid;
 tuple.t_data = tuphead;

 tuplestore_puttuple(state->tuple_store, &tuple);
}
