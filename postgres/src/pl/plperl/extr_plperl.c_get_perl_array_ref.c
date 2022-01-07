
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SV ;
typedef int HV ;


 int ERROR ;
 scalar_t__ SVt_PVAV ;
 scalar_t__ SvOK (int *) ;
 scalar_t__ SvROK (int *) ;
 scalar_t__ SvRV (int *) ;
 scalar_t__ SvTYPE (scalar_t__) ;
 int dTHX ;
 int elog (int ,char*) ;
 int ** hv_fetch_string (int *,char*) ;
 scalar_t__ sv_isa (int *,char*) ;

__attribute__((used)) static SV *
get_perl_array_ref(SV *sv)
{
 dTHX;

 if (SvOK(sv) && SvROK(sv))
 {
  if (SvTYPE(SvRV(sv)) == SVt_PVAV)
   return sv;
  else if (sv_isa(sv, "PostgreSQL::InServer::ARRAY"))
  {
   HV *hv = (HV *) SvRV(sv);
   SV **sav = hv_fetch_string(hv, "array");

   if (*sav && SvOK(*sav) && SvROK(*sav) &&
    SvTYPE(SvRV(*sav)) == SVt_PVAV)
    return *sav;

   elog(ERROR, "could not get array reference from PostgreSQL::InServer::ARRAY object");
  }
 }
 return ((void*)0);
}
