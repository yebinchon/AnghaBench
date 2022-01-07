
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_18__ {scalar_t__ attisdropped; int attname; } ;
struct TYPE_17__ {TYPE_1__* rd_att; } ;
struct TYPE_16__ {char* data; } ;
struct TYPE_15__ {int natts; } ;
typedef TYPE_2__ StringInfoData ;
typedef TYPE_3__* Relation ;
typedef int HeapTuple ;
typedef TYPE_4__* Form_pg_attribute ;


 int ERRCODE_CARDINALITY_VIOLATION ;
 int ERROR ;
 int NameStr (int ) ;
 char* SPI_getvalue (int ,TYPE_1__*,int) ;
 TYPE_4__* TupleDescAttr (TYPE_1__*,int) ;
 int appendStringInfo (TYPE_2__*,char*,char*) ;
 int appendStringInfoChar (TYPE_2__*,char) ;
 int appendStringInfoString (TYPE_2__*,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 char* generate_relation_name (TYPE_3__*) ;
 int get_attnum_pk_pos (int*,int,int) ;
 int get_tuple_of_interest (TYPE_3__*,int*,int,char**) ;
 int initStringInfo (TYPE_2__*) ;
 int pfree (char*) ;
 char* pstrdup (char*) ;
 char* quote_ident_cstr (int ) ;
 char* quote_literal_cstr (char*) ;

__attribute__((used)) static char *
get_sql_insert(Relation rel, int *pkattnums, int pknumatts, char **src_pkattvals, char **tgt_pkattvals)
{
 char *relname;
 HeapTuple tuple;
 TupleDesc tupdesc;
 int natts;
 StringInfoData buf;
 char *val;
 int key;
 int i;
 bool needComma;

 initStringInfo(&buf);


 relname = generate_relation_name(rel);

 tupdesc = rel->rd_att;
 natts = tupdesc->natts;

 tuple = get_tuple_of_interest(rel, pkattnums, pknumatts, src_pkattvals);
 if (!tuple)
  ereport(ERROR,
    (errcode(ERRCODE_CARDINALITY_VIOLATION),
     errmsg("source row not found")));

 appendStringInfo(&buf, "INSERT INTO %s(", relname);

 needComma = 0;
 for (i = 0; i < natts; i++)
 {
  Form_pg_attribute att = TupleDescAttr(tupdesc, i);

  if (att->attisdropped)
   continue;

  if (needComma)
   appendStringInfoChar(&buf, ',');

  appendStringInfoString(&buf,
          quote_ident_cstr(NameStr(att->attname)));
  needComma = 1;
 }

 appendStringInfoString(&buf, ") VALUES(");




 needComma = 0;
 for (i = 0; i < natts; i++)
 {
  if (TupleDescAttr(tupdesc, i)->attisdropped)
   continue;

  if (needComma)
   appendStringInfoChar(&buf, ',');

  key = get_attnum_pk_pos(pkattnums, pknumatts, i);

  if (key >= 0)
   val = tgt_pkattvals[key] ? pstrdup(tgt_pkattvals[key]) : ((void*)0);
  else
   val = SPI_getvalue(tuple, tupdesc, i + 1);

  if (val != ((void*)0))
  {
   appendStringInfoString(&buf, quote_literal_cstr(val));
   pfree(val);
  }
  else
   appendStringInfoString(&buf, "NULL");
  needComma = 1;
 }
 appendStringInfoChar(&buf, ')');

 return buf.data;
}
