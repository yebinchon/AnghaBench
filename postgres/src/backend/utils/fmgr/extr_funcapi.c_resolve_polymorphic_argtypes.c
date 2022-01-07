
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Node ;







 int InvalidOid ;
 scalar_t__ OidIsValid (int) ;
 char PROARGMODE_IN ;
 char PROARGMODE_OUT ;
 char PROARGMODE_TABLE ;
 int get_call_expr_argtype (int *,int) ;
 int resolve_generic_type (int const,int,int const) ;

bool
resolve_polymorphic_argtypes(int numargs, Oid *argtypes, char *argmodes,
        Node *call_expr)
{
 bool have_anyelement_result = 0;
 bool have_anyarray_result = 0;
 bool have_anyrange_result = 0;
 Oid anyelement_type = InvalidOid;
 Oid anyarray_type = InvalidOid;
 Oid anyrange_type = InvalidOid;
 int inargno;
 int i;


 inargno = 0;
 for (i = 0; i < numargs; i++)
 {
  char argmode = argmodes ? argmodes[i] : PROARGMODE_IN;

  switch (argtypes[i])
  {
   case 131:
   case 129:
   case 130:
    if (argmode == PROARGMODE_OUT || argmode == PROARGMODE_TABLE)
     have_anyelement_result = 1;
    else
    {
     if (!OidIsValid(anyelement_type))
     {
      anyelement_type = get_call_expr_argtype(call_expr,
                inargno);
      if (!OidIsValid(anyelement_type))
       return 0;
     }
     argtypes[i] = anyelement_type;
    }
    break;
   case 132:
    if (argmode == PROARGMODE_OUT || argmode == PROARGMODE_TABLE)
     have_anyarray_result = 1;
    else
    {
     if (!OidIsValid(anyarray_type))
     {
      anyarray_type = get_call_expr_argtype(call_expr,
                 inargno);
      if (!OidIsValid(anyarray_type))
       return 0;
     }
     argtypes[i] = anyarray_type;
    }
    break;
   case 128:
    if (argmode == PROARGMODE_OUT || argmode == PROARGMODE_TABLE)
     have_anyrange_result = 1;
    else
    {
     if (!OidIsValid(anyrange_type))
     {
      anyrange_type = get_call_expr_argtype(call_expr,
                 inargno);
      if (!OidIsValid(anyrange_type))
       return 0;
     }
     argtypes[i] = anyrange_type;
    }
    break;
   default:
    break;
  }
  if (argmode != PROARGMODE_OUT && argmode != PROARGMODE_TABLE)
   inargno++;
 }


 if (!have_anyelement_result && !have_anyarray_result &&
  !have_anyrange_result)
  return 1;


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




 for (i = 0; i < numargs; i++)
 {
  switch (argtypes[i])
  {
   case 131:
   case 129:
   case 130:
    argtypes[i] = anyelement_type;
    break;
   case 132:
    argtypes[i] = anyarray_type;
    break;
   case 128:
    argtypes[i] = anyrange_type;
    break;
   default:
    break;
  }
 }

 return 1;
}
