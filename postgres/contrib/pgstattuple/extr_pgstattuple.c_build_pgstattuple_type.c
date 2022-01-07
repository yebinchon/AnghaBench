
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double table_len; double tuple_len; double dead_tuple_len; double free_space; double tuple_count; double dead_tuple_count; } ;
typedef TYPE_1__ pgstattuple_type ;
typedef int TupleDesc ;
typedef int HeapTuple ;
typedef int FunctionCallInfo ;
typedef int Datum ;
typedef int AttInMetadata ;


 int BuildTupleFromCStrings (int *,char**) ;
 int ERROR ;
 int HeapTupleGetDatum (int ) ;
 char* INT64_FORMAT ;
 int NCHARS ;
 int NCOLUMNS ;
 scalar_t__ TYPEFUNC_COMPOSITE ;
 int * TupleDescGetAttInMetadata (int ) ;
 int elog (int ,char*) ;
 scalar_t__ get_call_result_type (int ,int *,int *) ;
 int snprintf (char*,int,char*,double) ;

__attribute__((used)) static Datum
build_pgstattuple_type(pgstattuple_type *stat, FunctionCallInfo fcinfo)
{



 HeapTuple tuple;
 char *values[9];
 char values_buf[9][314];
 int i;
 double tuple_percent;
 double dead_tuple_percent;
 double free_percent;
 TupleDesc tupdesc;
 AttInMetadata *attinmeta;


 if (get_call_result_type(fcinfo, ((void*)0), &tupdesc) != TYPEFUNC_COMPOSITE)
  elog(ERROR, "return type must be a row type");





 attinmeta = TupleDescGetAttInMetadata(tupdesc);

 if (stat->table_len == 0)
 {
  tuple_percent = 0.0;
  dead_tuple_percent = 0.0;
  free_percent = 0.0;
 }
 else
 {
  tuple_percent = 100.0 * stat->tuple_len / stat->table_len;
  dead_tuple_percent = 100.0 * stat->dead_tuple_len / stat->table_len;
  free_percent = 100.0 * stat->free_space / stat->table_len;
 }






 for (i = 0; i < 9; i++)
  values[i] = values_buf[i];
 i = 0;
 snprintf(values[i++], 314, INT64_FORMAT, stat->table_len);
 snprintf(values[i++], 314, INT64_FORMAT, stat->tuple_count);
 snprintf(values[i++], 314, INT64_FORMAT, stat->tuple_len);
 snprintf(values[i++], 314, "%.2f", tuple_percent);
 snprintf(values[i++], 314, INT64_FORMAT, stat->dead_tuple_count);
 snprintf(values[i++], 314, INT64_FORMAT, stat->dead_tuple_len);
 snprintf(values[i++], 314, "%.2f", dead_tuple_percent);
 snprintf(values[i++], 314, INT64_FORMAT, stat->free_space);
 snprintf(values[i++], 314, "%.2f", free_percent);


 tuple = BuildTupleFromCStrings(attinmeta, values);


 return HeapTupleGetDatum(tuple);
}
