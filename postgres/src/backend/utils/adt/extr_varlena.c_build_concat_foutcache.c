
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * fn_extra; int fn_mcxt; } ;
struct TYPE_4__ {TYPE_2__* flinfo; } ;
typedef int Oid ;
typedef TYPE_1__* FunctionCallInfo ;
typedef int FmgrInfo ;


 int ERROR ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int OidIsValid (int ) ;
 int PG_NARGS () ;
 int elog (int ,char*) ;
 int fmgr_info_cxt (int ,int *,int ) ;
 int getTypeOutputInfo (int ,int *,int*) ;
 int get_fn_expr_argtype (TYPE_2__*,int) ;

__attribute__((used)) static FmgrInfo *
build_concat_foutcache(FunctionCallInfo fcinfo, int argidx)
{
 FmgrInfo *foutcache;
 int i;


 foutcache = (FmgrInfo *) MemoryContextAlloc(fcinfo->flinfo->fn_mcxt,
            PG_NARGS() * sizeof(FmgrInfo));

 for (i = argidx; i < PG_NARGS(); i++)
 {
  Oid valtype;
  Oid typOutput;
  bool typIsVarlena;

  valtype = get_fn_expr_argtype(fcinfo->flinfo, i);
  if (!OidIsValid(valtype))
   elog(ERROR, "could not determine data type of concat() input");

  getTypeOutputInfo(valtype, &typOutput, &typIsVarlena);
  fmgr_info_cxt(typOutput, &foutcache[i], fcinfo->flinfo->fn_mcxt);
 }

 fcinfo->flinfo->fn_extra = foutcache;

 return foutcache;
}
