
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int typreceive; int typisdefined; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;


 int ERRCODE_UNDEFINED_FUNCTION ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (int ) ;
 int getTypeIOParam (int ) ;

void
getTypeBinaryInputInfo(Oid type, Oid *typReceive, Oid *typIOParam)
{
 HeapTuple typeTuple;
 Form_pg_type pt;

 typeTuple = SearchSysCache1(TYPEOID, ObjectIdGetDatum(type));
 if (!HeapTupleIsValid(typeTuple))
  elog(ERROR, "cache lookup failed for type %u", type);
 pt = (Form_pg_type) GETSTRUCT(typeTuple);

 if (!pt->typisdefined)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("type %s is only a shell",
      format_type_be(type))));
 if (!OidIsValid(pt->typreceive))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_FUNCTION),
     errmsg("no binary input function available for type %s",
      format_type_be(type))));

 *typReceive = pt->typreceive;
 *typIOParam = getTypeIOParam(typeTuple);

 ReleaseSysCache(typeTuple);
}
