
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int castcontext; int castmethod; scalar_t__ castfunc; } ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_cast ;
typedef scalar_t__ CoercionPathType ;
typedef scalar_t__ CoercionContext ;


 int CASTSOURCETARGET ;
 scalar_t__ COERCION_ASSIGNMENT ;



 scalar_t__ COERCION_EXPLICIT ;
 scalar_t__ COERCION_IMPLICIT ;



 scalar_t__ COERCION_PATH_ARRAYCOERCE ;
 scalar_t__ COERCION_PATH_COERCEVIAIO ;
 scalar_t__ COERCION_PATH_FUNC ;
 scalar_t__ COERCION_PATH_NONE ;
 scalar_t__ COERCION_PATH_RELABELTYPE ;
 int ERROR ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 scalar_t__ INT2VECTOROID ;
 scalar_t__ InvalidOid ;
 scalar_t__ OIDVECTOROID ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 scalar_t__ TYPCATEGORY_STRING ;
 scalar_t__ TypeCategory (scalar_t__) ;
 int elog (int ,char*,int) ;
 scalar_t__ getBaseType (scalar_t__) ;
 scalar_t__ get_element_type (scalar_t__) ;

CoercionPathType
find_coercion_pathway(Oid targetTypeId, Oid sourceTypeId,
       CoercionContext ccontext,
       Oid *funcid)
{
 CoercionPathType result = COERCION_PATH_NONE;
 HeapTuple tuple;

 *funcid = InvalidOid;


 if (OidIsValid(sourceTypeId))
  sourceTypeId = getBaseType(sourceTypeId);
 if (OidIsValid(targetTypeId))
  targetTypeId = getBaseType(targetTypeId);


 if (sourceTypeId == targetTypeId)
  return COERCION_PATH_RELABELTYPE;


 tuple = SearchSysCache2(CASTSOURCETARGET,
       ObjectIdGetDatum(sourceTypeId),
       ObjectIdGetDatum(targetTypeId));

 if (HeapTupleIsValid(tuple))
 {
  Form_pg_cast castForm = (Form_pg_cast) GETSTRUCT(tuple);
  CoercionContext castcontext;


  switch (castForm->castcontext)
  {
   case 131:
    castcontext = COERCION_IMPLICIT;
    break;
   case 133:
    castcontext = COERCION_ASSIGNMENT;
    break;
   case 132:
    castcontext = COERCION_EXPLICIT;
    break;
   default:
    elog(ERROR, "unrecognized castcontext: %d",
      (int) castForm->castcontext);
    castcontext = 0;
    break;
  }


  if (ccontext >= castcontext)
  {
   switch (castForm->castmethod)
   {
    case 129:
     result = COERCION_PATH_FUNC;
     *funcid = castForm->castfunc;
     break;
    case 128:
     result = COERCION_PATH_COERCEVIAIO;
     break;
    case 130:
     result = COERCION_PATH_RELABELTYPE;
     break;
    default:
     elog(ERROR, "unrecognized castmethod: %d",
       (int) castForm->castmethod);
     break;
   }
  }

  ReleaseSysCache(tuple);
 }
 else
 {
  if (targetTypeId != OIDVECTOROID && targetTypeId != INT2VECTOROID)
  {
   Oid targetElem;
   Oid sourceElem;

   if ((targetElem = get_element_type(targetTypeId)) != InvalidOid &&
    (sourceElem = get_element_type(sourceTypeId)) != InvalidOid)
   {
    CoercionPathType elempathtype;
    Oid elemfuncid;

    elempathtype = find_coercion_pathway(targetElem,
              sourceElem,
              ccontext,
              &elemfuncid);
    if (elempathtype != COERCION_PATH_NONE)
    {
     result = COERCION_PATH_ARRAYCOERCE;
    }
   }
  }
  if (result == COERCION_PATH_NONE)
  {
   if (ccontext >= COERCION_ASSIGNMENT &&
    TypeCategory(targetTypeId) == TYPCATEGORY_STRING)
    result = COERCION_PATH_COERCEVIAIO;
   else if (ccontext >= COERCION_EXPLICIT &&
      TypeCategory(sourceTypeId) == TYPCATEGORY_STRING)
    result = COERCION_PATH_COERCEVIAIO;
  }
 }

 return result;
}
