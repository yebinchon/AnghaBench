
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int Type ;
struct TYPE_4__ {scalar_t__ castfunc; } ;
struct TYPE_3__ {scalar_t__ typelem; int typlen; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;
typedef TYPE_2__* Form_pg_cast ;
typedef int CoercionPathType ;


 int CASTSOURCETARGET ;
 int COERCION_PATH_ARRAYCOERCE ;
 int COERCION_PATH_FUNC ;
 int COERCION_PATH_NONE ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 scalar_t__ InvalidOid ;
 int ObjectIdGetDatum (scalar_t__) ;
 int OidIsValid (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 int typeidType (scalar_t__) ;

CoercionPathType
find_typmod_coercion_function(Oid typeId,
         Oid *funcid)
{
 CoercionPathType result;
 Type targetType;
 Form_pg_type typeForm;
 HeapTuple tuple;

 *funcid = InvalidOid;
 result = COERCION_PATH_FUNC;

 targetType = typeidType(typeId);
 typeForm = (Form_pg_type) GETSTRUCT(targetType);


 if (typeForm->typelem != InvalidOid && typeForm->typlen == -1)
 {

  typeId = typeForm->typelem;
  result = COERCION_PATH_ARRAYCOERCE;
 }
 ReleaseSysCache(targetType);


 tuple = SearchSysCache2(CASTSOURCETARGET,
       ObjectIdGetDatum(typeId),
       ObjectIdGetDatum(typeId));

 if (HeapTupleIsValid(tuple))
 {
  Form_pg_cast castForm = (Form_pg_cast) GETSTRUCT(tuple);

  *funcid = castForm->castfunc;
  ReleaseSysCache(tuple);
 }

 if (!OidIsValid(*funcid))
  result = COERCION_PATH_NONE;

 return result;
}
