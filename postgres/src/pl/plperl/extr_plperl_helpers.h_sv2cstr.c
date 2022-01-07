
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SV ;
typedef int STRLEN ;


 scalar_t__ GetDatabaseEncoding () ;
 scalar_t__ PG_SQL_ASCII ;
 scalar_t__ SVt_PVFM ;
 scalar_t__ SVt_PVLV ;
 char* SvPV (int *,int ) ;
 char* SvPVutf8 (int *,int ) ;
 scalar_t__ SvREADONLY (int *) ;
 int SvREFCNT_dec (int *) ;
 int SvREFCNT_inc_simple_void (int *) ;
 scalar_t__ SvTYPE (int *) ;
 int dTHX ;
 scalar_t__ isGV_with_GP (int *) ;
 int * newSVsv (int *) ;
 char* utf_u2e (char*,int ) ;

__attribute__((used)) static inline char *
sv2cstr(SV *sv)
{
 dTHX;
 char *val,
      *res;
 STRLEN len;
 if (SvREADONLY(sv) ||
  isGV_with_GP(sv) ||
  (SvTYPE(sv) > SVt_PVLV && SvTYPE(sv) != SVt_PVFM))
  sv = newSVsv(sv);
 else
 {




  SvREFCNT_inc_simple_void(sv);
 }






 if (GetDatabaseEncoding() == PG_SQL_ASCII)
  val = SvPV(sv, len);
 else
  val = SvPVutf8(sv, len);





 res = utf_u2e(val, len);


 SvREFCNT_dec(sv);

 return res;
}
