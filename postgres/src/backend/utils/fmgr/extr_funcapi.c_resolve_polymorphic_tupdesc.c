
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int dim1; int* values; } ;
typedef TYPE_1__ oidvector ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_12__ {int atttypid; int attname; } ;
struct TYPE_11__ {int natts; } ;
typedef scalar_t__ Oid ;
typedef int Node ;
typedef TYPE_3__* Form_pg_attribute ;







 scalar_t__ InvalidOid ;
 int NameStr (int ) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 TYPE_3__* TupleDescAttr (TYPE_2__*,int) ;
 int TupleDescInitEntry (TYPE_2__*,int,int ,scalar_t__,int,int ) ;
 int TupleDescInitEntryCollation (TYPE_2__*,int,scalar_t__) ;
 scalar_t__ exprInputCollation (int *) ;
 scalar_t__ get_call_expr_argtype (int *,int) ;
 scalar_t__ get_typcollation (scalar_t__) ;
 scalar_t__ resolve_generic_type (int const,scalar_t__,int const) ;
 scalar_t__ type_is_array (scalar_t__) ;
 int type_is_enum (scalar_t__) ;

__attribute__((used)) static bool
resolve_polymorphic_tupdesc(TupleDesc tupdesc, oidvector *declared_args,
       Node *call_expr)
{
 int natts = tupdesc->natts;
 int nargs = declared_args->dim1;
 bool have_anyelement_result = 0;
 bool have_anyarray_result = 0;
 bool have_anyrange_result = 0;
 bool have_anynonarray = 0;
 bool have_anyenum = 0;
 Oid anyelement_type = InvalidOid;
 Oid anyarray_type = InvalidOid;
 Oid anyrange_type = InvalidOid;
 Oid anycollation = InvalidOid;
 int i;


 for (i = 0; i < natts; i++)
 {
  switch (TupleDescAttr(tupdesc, i)->atttypid)
  {
   case 131:
    have_anyelement_result = 1;
    break;
   case 132:
    have_anyarray_result = 1;
    break;
   case 129:
    have_anyelement_result = 1;
    have_anynonarray = 1;
    break;
   case 130:
    have_anyelement_result = 1;
    have_anyenum = 1;
    break;
   case 128:
    have_anyrange_result = 1;
    break;
   default:
    break;
  }
 }
 if (!have_anyelement_result && !have_anyarray_result &&
  !have_anyrange_result)
  return 1;





 if (!call_expr)
  return 0;

 for (i = 0; i < nargs; i++)
 {
  switch (declared_args->values[i])
  {
   case 131:
   case 129:
   case 130:
    if (!OidIsValid(anyelement_type))
     anyelement_type = get_call_expr_argtype(call_expr, i);
    break;
   case 132:
    if (!OidIsValid(anyarray_type))
     anyarray_type = get_call_expr_argtype(call_expr, i);
    break;
   case 128:
    if (!OidIsValid(anyrange_type))
     anyrange_type = get_call_expr_argtype(call_expr, i);
    break;
   default:
    break;
  }
 }


 if (!OidIsValid(anyelement_type) && !OidIsValid(anyarray_type) &&
  !OidIsValid(anyrange_type))
  return 0;


 if (have_anyelement_result && !OidIsValid(anyelement_type))
 {
  if (OidIsValid(anyarray_type))
   anyelement_type = resolve_generic_type(131,
               anyarray_type,
               132);
  if (OidIsValid(anyrange_type))
  {
   Oid subtype = resolve_generic_type(131,
                anyrange_type,
                128);


   if (OidIsValid(anyelement_type) && anyelement_type != subtype)
    return 0;
   anyelement_type = subtype;
  }
 }

 if (have_anyarray_result && !OidIsValid(anyarray_type))
  anyarray_type = resolve_generic_type(132,
            anyelement_type,
            131);





 if (have_anyrange_result && !OidIsValid(anyrange_type))
  return 0;


 if (have_anynonarray && type_is_array(anyelement_type))
  return 0;


 if (have_anyenum && !type_is_enum(anyelement_type))
  return 0;







 if (OidIsValid(anyelement_type))
  anycollation = get_typcollation(anyelement_type);
 else if (OidIsValid(anyarray_type))
  anycollation = get_typcollation(anyarray_type);

 if (OidIsValid(anycollation))
 {





  Oid inputcollation = exprInputCollation(call_expr);

  if (OidIsValid(inputcollation))
   anycollation = inputcollation;
 }


 for (i = 0; i < natts; i++)
 {
  Form_pg_attribute att = TupleDescAttr(tupdesc, i);

  switch (att->atttypid)
  {
   case 131:
   case 129:
   case 130:
    TupleDescInitEntry(tupdesc, i + 1,
           NameStr(att->attname),
           anyelement_type,
           -1,
           0);
    TupleDescInitEntryCollation(tupdesc, i + 1, anycollation);
    break;
   case 132:
    TupleDescInitEntry(tupdesc, i + 1,
           NameStr(att->attname),
           anyarray_type,
           -1,
           0);
    TupleDescInitEntryCollation(tupdesc, i + 1, anycollation);
    break;
   case 128:
    TupleDescInitEntry(tupdesc, i + 1,
           NameStr(att->attname),
           anyrange_type,
           -1,
           0);

    break;
   default:
    break;
  }
 }

 return 1;
}
