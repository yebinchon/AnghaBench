
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_18__ {int attname; scalar_t__ attisdropped; } ;
struct TYPE_17__ {TYPE_1__* rd_att; } ;
struct TYPE_16__ {int * vals; } ;
struct TYPE_15__ {int data; } ;
struct TYPE_14__ {int natts; } ;
typedef TYPE_2__ StringInfoData ;
typedef TYPE_3__ SPITupleTable ;
typedef TYPE_4__* Relation ;
typedef int * HeapTuple ;
typedef TYPE_5__* Form_pg_attribute ;


 int ERRCODE_CARDINALITY_VIOLATION ;
 int ERROR ;
 int NameStr (int ) ;
 int SPI_OK_SELECT ;
 int SPI_connect () ;
 int * SPI_copytuple (int ) ;
 int SPI_exec (int ,int ) ;
 int SPI_finish () ;
 int SPI_processed ;
 TYPE_3__* SPI_tuptable ;
 TYPE_5__* TupleDescAttr (TYPE_1__*,int) ;
 int appendStringInfo (TYPE_2__*,char*,char*) ;
 int appendStringInfoString (TYPE_2__*,char*) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 char* generate_relation_name (TYPE_4__*) ;
 int initStringInfo (TYPE_2__*) ;
 int pfree (int ) ;
 char* quote_ident_cstr (int ) ;
 char* quote_literal_cstr (char*) ;

__attribute__((used)) static HeapTuple
get_tuple_of_interest(Relation rel, int *pkattnums, int pknumatts, char **src_pkattvals)
{
 char *relname;
 TupleDesc tupdesc;
 int natts;
 StringInfoData buf;
 int ret;
 HeapTuple tuple;
 int i;




 if ((ret = SPI_connect()) < 0)

  elog(ERROR, "SPI connect failure - returned %d", ret);

 initStringInfo(&buf);


 relname = generate_relation_name(rel);

 tupdesc = rel->rd_att;
 natts = tupdesc->natts;
 appendStringInfoString(&buf, "SELECT ");

 for (i = 0; i < natts; i++)
 {
  Form_pg_attribute attr = TupleDescAttr(tupdesc, i);

  if (i > 0)
   appendStringInfoString(&buf, ", ");

  if (attr->attisdropped)
   appendStringInfoString(&buf, "NULL");
  else
   appendStringInfoString(&buf,
           quote_ident_cstr(NameStr(attr->attname)));
 }

 appendStringInfo(&buf, " FROM %s WHERE ", relname);

 for (i = 0; i < pknumatts; i++)
 {
  int pkattnum = pkattnums[i];
  Form_pg_attribute attr = TupleDescAttr(tupdesc, pkattnum);

  if (i > 0)
   appendStringInfoString(&buf, " AND ");

  appendStringInfoString(&buf,
          quote_ident_cstr(NameStr(attr->attname)));

  if (src_pkattvals[i] != ((void*)0))
   appendStringInfo(&buf, " = %s",
        quote_literal_cstr(src_pkattvals[i]));
  else
   appendStringInfoString(&buf, " IS NULL");
 }




 ret = SPI_exec(buf.data, 0);
 pfree(buf.data);




 if ((ret == SPI_OK_SELECT) && (SPI_processed > 1))
  ereport(ERROR,
    (errcode(ERRCODE_CARDINALITY_VIOLATION),
     errmsg("source criteria matched more than one record")));

 else if (ret == SPI_OK_SELECT && SPI_processed == 1)
 {
  SPITupleTable *tuptable = SPI_tuptable;

  tuple = SPI_copytuple(tuptable->vals[0]);
  SPI_finish();

  return tuple;
 }
 else
 {



  SPI_finish();

  return ((void*)0);
 }




 return ((void*)0);
}
