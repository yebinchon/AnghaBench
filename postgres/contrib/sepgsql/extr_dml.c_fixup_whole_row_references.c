
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ attisdropped; } ;
struct TYPE_3__ {int relnatts; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int Bitmapset ;
typedef int AttrNumber ;


 int ATTNUM ;
 int ERROR ;
 int FirstLowInvalidHeapAttributeNumber ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int Int16GetDatum (int) ;
 int InvalidAttrNumber ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int * bms_add_member (int *,int) ;
 int * bms_copy (int *) ;
 int * bms_del_member (int *,int) ;
 int bms_is_member (int,int *) ;
 int elog (int ,char*,int ) ;

__attribute__((used)) static Bitmapset *
fixup_whole_row_references(Oid relOid, Bitmapset *columns)
{
 Bitmapset *result;
 HeapTuple tuple;
 AttrNumber natts;
 AttrNumber attno;
 int index;


 index = InvalidAttrNumber - FirstLowInvalidHeapAttributeNumber;
 if (!bms_is_member(index, columns))
  return columns;


 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relOid));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for relation %u", relOid);
 natts = ((Form_pg_class) GETSTRUCT(tuple))->relnatts;
 ReleaseSysCache(tuple);


 result = bms_copy(columns);
 result = bms_del_member(result, index);

 for (attno = 1; attno <= natts; attno++)
 {
  tuple = SearchSysCache2(ATTNUM,
        ObjectIdGetDatum(relOid),
        Int16GetDatum(attno));
  if (!HeapTupleIsValid(tuple))
   continue;

  if (((Form_pg_attribute) GETSTRUCT(tuple))->attisdropped)
   continue;

  index = attno - FirstLowInvalidHeapAttributeNumber;

  result = bms_add_member(result, index);

  ReleaseSysCache(tuple);
 }
 return result;
}
