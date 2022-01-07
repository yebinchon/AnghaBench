
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int nargs; int reference; int * arg_out_func; int * arg_arraytype; scalar_t__* arg_is_rowtype; } ;
typedef TYPE_4__ plperl_proc_desc ;
struct TYPE_14__ {TYPE_2__* prodesc; } ;
struct TYPE_13__ {TYPE_3__* args; TYPE_1__* flinfo; } ;
struct TYPE_11__ {int value; scalar_t__ isnull; } ;
struct TYPE_10__ {int trftypes; int lang_oid; } ;
struct TYPE_9__ {scalar_t__ fn_oid; } ;
typedef int SV ;
typedef int Oid ;
typedef TYPE_5__* FunctionCallInfo ;


 int Assert (int) ;
 scalar_t__ DatumGetPointer (int ) ;
 int ENTER ;
 int ERRCODE_EXTERNAL_ROUTINE_EXCEPTION ;
 int ERROR ;
 int ERRSV ;
 int EXTEND (int ,int) ;
 int FREETMPS ;
 int G_EVAL ;
 int G_SCALAR ;
 int LEAVE ;
 int OidFunctionCall1 (int ,int ) ;
 scalar_t__ OidIsValid (int ) ;
 char* OutputFunctionCall (int *,int ) ;
 int PL_sv_undef ;
 int POPs ;
 int PUSHMARK (int ) ;
 int PUSHs (int *) ;
 int PUTBACK ;
 int SAVETMPS ;
 int SP ;
 int SPAGAIN ;
 scalar_t__ SvTRUE (int ) ;
 int * cstr2sv (char*) ;
 TYPE_8__* current_call_data ;
 int dSP ;
 int dTHX ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int get_func_signature (scalar_t__,int **,int*) ;
 int get_transform_fromsql (int ,int ,int ) ;
 int * newSVsv (int ) ;
 int perl_call_sv (int ,int) ;
 int pfree (char*) ;
 int * plperl_hash_from_datum (int ) ;
 int * plperl_ref_from_pg_array (int ,int ) ;
 int sp ;
 int strip_trailing_ws (int ) ;
 int sv2cstr (int ) ;
 int * sv_2mortal (int *) ;

__attribute__((used)) static SV *
plperl_call_perl_func(plperl_proc_desc *desc, FunctionCallInfo fcinfo)
{
 dTHX;
 dSP;
 SV *retval;
 int i;
 int count;
 Oid *argtypes = ((void*)0);
 int nargs = 0;

 ENTER;
 SAVETMPS;

 PUSHMARK(SP);
 EXTEND(sp, desc->nargs);


 if (fcinfo->flinfo->fn_oid)
  get_func_signature(fcinfo->flinfo->fn_oid, &argtypes, &nargs);
 Assert(nargs == desc->nargs);

 for (i = 0; i < desc->nargs; i++)
 {
  if (fcinfo->args[i].isnull)
   PUSHs(&PL_sv_undef);
  else if (desc->arg_is_rowtype[i])
  {
   SV *sv = plperl_hash_from_datum(fcinfo->args[i].value);

   PUSHs(sv_2mortal(sv));
  }
  else
  {
   SV *sv;
   Oid funcid;

   if (OidIsValid(desc->arg_arraytype[i]))
    sv = plperl_ref_from_pg_array(fcinfo->args[i].value, desc->arg_arraytype[i]);
   else if ((funcid = get_transform_fromsql(argtypes[i], current_call_data->prodesc->lang_oid, current_call_data->prodesc->trftypes)))
    sv = (SV *) DatumGetPointer(OidFunctionCall1(funcid, fcinfo->args[i].value));
   else
   {
    char *tmp;

    tmp = OutputFunctionCall(&(desc->arg_out_func[i]),
           fcinfo->args[i].value);
    sv = cstr2sv(tmp);
    pfree(tmp);
   }

   PUSHs(sv_2mortal(sv));
  }
 }
 PUTBACK;


 count = perl_call_sv(desc->reference, G_SCALAR | G_EVAL);

 SPAGAIN;

 if (count != 1)
 {
  PUTBACK;
  FREETMPS;
  LEAVE;
  ereport(ERROR,
    (errcode(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
     errmsg("didn't get a return item from function")));
 }

 if (SvTRUE(ERRSV))
 {
  (void) POPs;
  PUTBACK;
  FREETMPS;
  LEAVE;

  ereport(ERROR,
    (errcode(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
     errmsg("%s", strip_trailing_ws(sv2cstr(ERRSV)))));
 }

 retval = newSVsv(POPs);

 PUTBACK;
 FREETMPS;
 LEAVE;

 return retval;
}
