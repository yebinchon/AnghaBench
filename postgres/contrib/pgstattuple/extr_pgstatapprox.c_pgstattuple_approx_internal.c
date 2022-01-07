
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int free_percent; int free_space; int dead_tuple_percent; int dead_tuple_len; int dead_tuple_count; int tuple_percent; int tuple_len; int tuple_count; int scanned_percent; int table_len; int member_0; } ;
typedef TYPE_2__ output_type ;
typedef int nulls ;
typedef TYPE_3__* TupleDesc ;
struct TYPE_16__ {TYPE_1__* rd_rel; } ;
struct TYPE_15__ {int natts; } ;
struct TYPE_13__ {scalar_t__ relkind; scalar_t__ relam; } ;
typedef TYPE_4__* Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int FunctionCallInfo ;
typedef int Datum ;


 int AccessShareLock ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int Float8GetDatum (int ) ;
 scalar_t__ HEAP_TABLE_AM_OID ;
 int HeapTupleGetDatum (int ) ;
 int Int64GetDatum (int ) ;
 int NUM_OUTPUT_COLUMNS ;
 scalar_t__ RELATION_IS_OTHER_TEMP (TYPE_4__*) ;
 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_RELATION ;
 int RelationGetRelationName (TYPE_4__*) ;
 scalar_t__ TYPEFUNC_COMPOSITE ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 scalar_t__ get_call_result_type (int ,int *,TYPE_3__**) ;
 int heap_form_tuple (TYPE_3__*,int *,int*) ;
 int memset (int*,int ,int) ;
 int relation_close (TYPE_4__*,int ) ;
 TYPE_4__* relation_open (int ,int ) ;
 int statapprox_heap (TYPE_4__*,TYPE_2__*) ;

Datum
pgstattuple_approx_internal(Oid relid, FunctionCallInfo fcinfo)
{
 Relation rel;
 output_type stat = {0};
 TupleDesc tupdesc;
 bool nulls[NUM_OUTPUT_COLUMNS];
 Datum values[NUM_OUTPUT_COLUMNS];
 HeapTuple ret;
 int i = 0;

 if (get_call_result_type(fcinfo, ((void*)0), &tupdesc) != TYPEFUNC_COMPOSITE)
  elog(ERROR, "return type must be a row type");

 if (tupdesc->natts != NUM_OUTPUT_COLUMNS)
  elog(ERROR, "incorrect number of output arguments");

 rel = relation_open(relid, AccessShareLock);






 if (RELATION_IS_OTHER_TEMP(rel))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot access temporary tables of other sessions")));






 if (!(rel->rd_rel->relkind == RELKIND_RELATION ||
    rel->rd_rel->relkind == RELKIND_MATVIEW))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("\"%s\" is not a table or materialized view",
      RelationGetRelationName(rel))));

 if (rel->rd_rel->relam != HEAP_TABLE_AM_OID)
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("only heap AM is supported")));

 statapprox_heap(rel, &stat);

 relation_close(rel, AccessShareLock);

 memset(nulls, 0, sizeof(nulls));

 values[i++] = Int64GetDatum(stat.table_len);
 values[i++] = Float8GetDatum(stat.scanned_percent);
 values[i++] = Int64GetDatum(stat.tuple_count);
 values[i++] = Int64GetDatum(stat.tuple_len);
 values[i++] = Float8GetDatum(stat.tuple_percent);
 values[i++] = Int64GetDatum(stat.dead_tuple_count);
 values[i++] = Int64GetDatum(stat.dead_tuple_len);
 values[i++] = Float8GetDatum(stat.dead_tuple_percent);
 values[i++] = Int64GetDatum(stat.free_space);
 values[i++] = Float8GetDatum(stat.free_percent);

 ret = heap_form_tuple(tupdesc, values, nulls);
 return HeapTupleGetDatum(ret);
}
