
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32 ;
typedef scalar_t__ TypeFuncClass ;
typedef TYPE_2__* TupleDesc ;
struct TYPE_11__ {TYPE_1__* prodesc; } ;
struct TYPE_10__ {scalar_t__ tdtypeid; } ;
struct TYPE_9__ {int trftypes; int lang_oid; } ;
typedef int SV ;
typedef scalar_t__ Oid ;
typedef scalar_t__ FunctionCallInfo ;
typedef int FmgrInfo ;
typedef int Datum ;


 int Assert (TYPE_2__*) ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int InputFunctionCall (int *,char*,scalar_t__,int ) ;
 int OidFunctionCall1 (scalar_t__,int ) ;
 int PointerGetDatum (int *) ;
 int ReleaseTupleDesc (TYPE_2__*) ;
 scalar_t__ SVt_PVHV ;
 int SvOK (int *) ;
 scalar_t__ SvROK (int *) ;
 int * SvRV (int *) ;
 scalar_t__ SvTYPE (int *) ;
 scalar_t__ TYPEFUNC_COMPOSITE ;
 scalar_t__ TYPEFUNC_COMPOSITE_DOMAIN ;
 scalar_t__ TYPEFUNC_OTHER ;
 scalar_t__ VOIDOID ;
 int _sv_to_datum_finfo (scalar_t__,int *,scalar_t__*) ;
 int check_stack_depth () ;
 TYPE_6__* current_call_data ;
 int domain_check (int ,int,scalar_t__,int *,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int format_type_be (scalar_t__) ;
 scalar_t__ get_call_result_type (scalar_t__,scalar_t__*,TYPE_2__**) ;
 int * get_perl_array_ref (int *) ;
 scalar_t__ get_transform_tosql (scalar_t__,int ,int ) ;
 TYPE_2__* lookup_rowtype_tupdesc_domain (scalar_t__,int ,int) ;
 int pfree (char*) ;
 int plperl_array_to_datum (int *,scalar_t__,int ) ;
 int plperl_hash_to_datum (int *,TYPE_2__*) ;
 char* sv2cstr (int *) ;
 int type_is_rowtype (scalar_t__) ;

__attribute__((used)) static Datum
plperl_sv_to_datum(SV *sv, Oid typid, int32 typmod,
       FunctionCallInfo fcinfo,
       FmgrInfo *finfo, Oid typioparam,
       bool *isnull)
{
 FmgrInfo tmp;
 Oid funcid;


 check_stack_depth();

 *isnull = 0;






 if (!sv || !SvOK(sv) || typid == VOIDOID)
 {

  if (!finfo)
  {
   _sv_to_datum_finfo(typid, &tmp, &typioparam);
   finfo = &tmp;
  }
  *isnull = 1;

  return InputFunctionCall(finfo, ((void*)0), typioparam, typmod);
 }
 else if ((funcid = get_transform_tosql(typid, current_call_data->prodesc->lang_oid, current_call_data->prodesc->trftypes)))
  return OidFunctionCall1(funcid, PointerGetDatum(sv));
 else if (SvROK(sv))
 {

  SV *sav = get_perl_array_ref(sv);

  if (sav)
  {

   return plperl_array_to_datum(sav, typid, typmod);
  }
  else if (SvTYPE(SvRV(sv)) == SVt_PVHV)
  {

   Datum ret;
   TupleDesc td;
   bool isdomain;

   if (!type_is_rowtype(typid))
    ereport(ERROR,
      (errcode(ERRCODE_DATATYPE_MISMATCH),
       errmsg("cannot convert Perl hash to non-composite type %s",
        format_type_be(typid))));

   td = lookup_rowtype_tupdesc_domain(typid, typmod, 1);
   if (td != ((void*)0))
   {

    isdomain = (typid != td->tdtypeid);
   }
   else
   {

    TypeFuncClass funcclass;

    if (fcinfo)
     funcclass = get_call_result_type(fcinfo, &typid, &td);
    else
     funcclass = TYPEFUNC_OTHER;
    if (funcclass != TYPEFUNC_COMPOSITE &&
     funcclass != TYPEFUNC_COMPOSITE_DOMAIN)
     ereport(ERROR,
       (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
        errmsg("function returning record called in context "
         "that cannot accept type record")));
    Assert(td);
    isdomain = (funcclass == TYPEFUNC_COMPOSITE_DOMAIN);
   }

   ret = plperl_hash_to_datum(sv, td);

   if (isdomain)
    domain_check(ret, 0, typid, ((void*)0), ((void*)0));


   ReleaseTupleDesc(td);

   return ret;
  }





  return plperl_sv_to_datum(SvRV(sv), typid, typmod,
          fcinfo, finfo, typioparam,
          isnull);
 }
 else
 {

  Datum ret;
  char *str = sv2cstr(sv);


  if (!finfo)
  {
   _sv_to_datum_finfo(typid, &tmp, &typioparam);
   finfo = &tmp;
  }

  ret = InputFunctionCall(finfo, str, typioparam, typmod);
  pfree(str);

  return ret;
 }
}
