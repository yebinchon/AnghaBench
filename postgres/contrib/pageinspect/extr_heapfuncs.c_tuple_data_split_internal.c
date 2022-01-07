
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint16 ;
typedef int bytea ;
typedef int bits8 ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_14__ {int attlen; int attalign; } ;
struct TYPE_13__ {TYPE_1__* rd_rel; } ;
struct TYPE_12__ {int natts; } ;
struct TYPE_11__ {scalar_t__ relam; } ;
typedef TYPE_3__* Relation ;
typedef int Oid ;
typedef TYPE_4__* Form_pg_attribute ;
typedef int Datum ;
typedef int ArrayBuildState ;


 int AccessShareLock ;
 int BYTEAOID ;
 int CurrentMemoryContext ;
 int * DatumGetByteaPCopy (char*) ;
 int ERRCODE_DATA_CORRUPTED ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int HEAP_HASNULL ;
 int HEAP_NATTS_MASK ;
 scalar_t__ HEAP_TABLE_AM_OID ;
 int PointerGetDatum (int *) ;
 TYPE_2__* RelationGetDescr (TYPE_3__*) ;
 int SET_VARSIZE (int *,scalar_t__) ;
 TYPE_4__* TupleDescAttr (TYPE_2__*,int) ;
 scalar_t__ VARATT_IS_EXTERNAL (char*) ;
 int VARATT_IS_EXTERNAL_INDIRECT (char*) ;
 int VARATT_IS_EXTERNAL_ONDISK (char*) ;
 int VARDATA (int *) ;
 scalar_t__ VARHDRSZ ;
 int VARSIZE_ANY (char*) ;
 int * accumArrayResult (int *,int ,int,int ,int ) ;
 int att_addlength_pointer (int,int,char*) ;
 int att_align_nominal (int,int ) ;
 int att_align_pointer (int,int ,int,char*) ;
 scalar_t__ att_isnull (int,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int * initArrayResult (int ,int ,int) ;
 int makeArrayResult (int *,int ) ;
 int memcpy (int ,char*,int) ;
 scalar_t__ palloc (scalar_t__) ;
 int pfree (int *) ;
 int relation_close (TYPE_3__*,int ) ;
 TYPE_3__* relation_open (int ,int ) ;

__attribute__((used)) static Datum
tuple_data_split_internal(Oid relid, char *tupdata,
        uint16 tupdata_len, uint16 t_infomask,
        uint16 t_infomask2, bits8 *t_bits,
        bool do_detoast)
{
 ArrayBuildState *raw_attrs;
 int nattrs;
 int i;
 int off = 0;
 Relation rel;
 TupleDesc tupdesc;


 rel = relation_open(relid, AccessShareLock);
 tupdesc = RelationGetDescr(rel);

 raw_attrs = initArrayResult(BYTEAOID, CurrentMemoryContext, 0);
 nattrs = tupdesc->natts;

 if (rel->rd_rel->relam != HEAP_TABLE_AM_OID)
  ereport(ERROR, (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("only heap AM is supported")));

 if (nattrs < (t_infomask2 & HEAP_NATTS_MASK))
  ereport(ERROR,
    (errcode(ERRCODE_DATA_CORRUPTED),
     errmsg("number of attributes in tuple header is greater than number of attributes in tuple descriptor")));

 for (i = 0; i < nattrs; i++)
 {
  Form_pg_attribute attr;
  bool is_null;
  bytea *attr_data = ((void*)0);

  attr = TupleDescAttr(tupdesc, i);







  if (i >= (t_infomask2 & HEAP_NATTS_MASK))
   is_null = 1;
  else
   is_null = (t_infomask & HEAP_HASNULL) && att_isnull(i, t_bits);

  if (!is_null)
  {
   int len;

   if (attr->attlen == -1)
   {
    off = att_align_pointer(off, attr->attalign, -1,
          tupdata + off);






    if (VARATT_IS_EXTERNAL(tupdata + off) &&
     !VARATT_IS_EXTERNAL_ONDISK(tupdata + off) &&
     !VARATT_IS_EXTERNAL_INDIRECT(tupdata + off))
     ereport(ERROR,
       (errcode(ERRCODE_DATA_CORRUPTED),
        errmsg("first byte of varlena attribute is incorrect for attribute %d", i)));

    len = VARSIZE_ANY(tupdata + off);
   }
   else
   {
    off = att_align_nominal(off, attr->attalign);
    len = attr->attlen;
   }

   if (tupdata_len < off + len)
    ereport(ERROR,
      (errcode(ERRCODE_DATA_CORRUPTED),
       errmsg("unexpected end of tuple data")));

   if (attr->attlen == -1 && do_detoast)
    attr_data = DatumGetByteaPCopy(tupdata + off);
   else
   {
    attr_data = (bytea *) palloc(len + VARHDRSZ);
    SET_VARSIZE(attr_data, len + VARHDRSZ);
    memcpy(VARDATA(attr_data), tupdata + off, len);
   }

   off = att_addlength_pointer(off, attr->attlen,
          tupdata + off);
  }

  raw_attrs = accumArrayResult(raw_attrs, PointerGetDatum(attr_data),
          is_null, BYTEAOID, CurrentMemoryContext);
  if (attr_data)
   pfree(attr_data);
 }

 if (tupdata_len != off)
  ereport(ERROR,
    (errcode(ERRCODE_DATA_CORRUPTED),
     errmsg("end of tuple reached without looking at all its data")));

 relation_close(rel, AccessShareLock);

 return makeArrayResult(raw_attrs, CurrentMemoryContext);
}
