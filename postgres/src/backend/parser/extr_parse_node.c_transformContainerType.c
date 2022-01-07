
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_2__ {scalar_t__ typelem; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;


 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ INT2ARRAYOID ;
 scalar_t__ INT2VECTOROID ;
 scalar_t__ InvalidOid ;
 scalar_t__ OIDARRAYOID ;
 scalar_t__ OIDVECTOROID ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPEOID ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (scalar_t__) ;
 scalar_t__ getBaseTypeAndTypmod (scalar_t__,int *) ;

Oid
transformContainerType(Oid *containerType, int32 *containerTypmod)
{
 Oid origContainerType = *containerType;
 Oid elementType;
 HeapTuple type_tuple_container;
 Form_pg_type type_struct_container;
 *containerType = getBaseTypeAndTypmod(*containerType, containerTypmod);
 if (*containerType == INT2VECTOROID)
  *containerType = INT2ARRAYOID;
 else if (*containerType == OIDVECTOROID)
  *containerType = OIDARRAYOID;


 type_tuple_container = SearchSysCache1(TYPEOID, ObjectIdGetDatum(*containerType));
 if (!HeapTupleIsValid(type_tuple_container))
  elog(ERROR, "cache lookup failed for type %u", *containerType);
 type_struct_container = (Form_pg_type) GETSTRUCT(type_tuple_container);



 elementType = type_struct_container->typelem;
 if (elementType == InvalidOid)
  ereport(ERROR,
    (errcode(ERRCODE_DATATYPE_MISMATCH),
     errmsg("cannot subscript type %s because it is not an array",
      format_type_be(origContainerType))));

 ReleaseSysCache(type_tuple_container);

 return elementType;
}
