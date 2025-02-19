
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {size_t z_nrules; int z_stdoff; scalar_t__ z_isdst; struct rule* z_rules; } ;
struct rule {scalar_t__ r_hiyear; int r_isdst; int r_dayofmonth; int r_tod; int r_todisstd; int r_todisut; int r_save; char* r_abbrvar; void* r_dycode; int r_month; int * r_yrtype; scalar_t__ r_hiwasnum; } ;
typedef size_t ptrdiff_t ;


 void* DC_DOM ;
 int MINSPERHOUR ;
 int SECSPERDAY ;
 int SECSPERMIN ;
 int TM_DECEMBER ;
 int TM_JANUARY ;
 scalar_t__ ZIC_MAX ;
 size_t doabbr (char*,struct zone const*,char const*,int,int,int) ;
 scalar_t__ hi_time ;
 scalar_t__ max_time ;
 scalar_t__ rule_cmp (struct rule*,struct rule*) ;
 int stringoffset (char*,int) ;
 int stringrule (char*,struct rule*,int,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
stringzone(char *result, struct zone const *zpfirst, ptrdiff_t zonecount)
{
 const struct zone *zp;
 struct rule *rp;
 struct rule *stdrp;
 struct rule *dstrp;
 ptrdiff_t i;
 const char *abbrvar;
 int compat = 0;
 int c;
 size_t len;
 int offsetlen;
 struct rule stdr,
    dstr;

 result[0] = '\0';





 if (hi_time < max_time)
  return -1;

 zp = zpfirst + zonecount - 1;
 stdrp = dstrp = ((void*)0);
 for (i = 0; i < zp->z_nrules; ++i)
 {
  rp = &zp->z_rules[i];
  if (rp->r_hiwasnum || rp->r_hiyear != ZIC_MAX)
   continue;
  if (rp->r_yrtype != ((void*)0))
   continue;
  if (!rp->r_isdst)
  {
   if (stdrp == ((void*)0))
    stdrp = rp;
   else
    return -1;
  }
  else
  {
   if (dstrp == ((void*)0))
    dstrp = rp;
   else
    return -1;
  }
 }
 if (stdrp == ((void*)0) && dstrp == ((void*)0))
 {




  struct rule *stdabbrrp = ((void*)0);

  for (i = 0; i < zp->z_nrules; ++i)
  {
   rp = &zp->z_rules[i];
   if (!rp->r_isdst && rule_cmp(stdabbrrp, rp) < 0)
    stdabbrrp = rp;
   if (rule_cmp(stdrp, rp) < 0)
    stdrp = rp;
  }
  if (stdrp != ((void*)0) && stdrp->r_isdst)
  {

   dstr.r_month = TM_JANUARY;
   dstr.r_dycode = DC_DOM;
   dstr.r_dayofmonth = 1;
   dstr.r_tod = 0;
   dstr.r_todisstd = dstr.r_todisut = 0;
   dstr.r_isdst = stdrp->r_isdst;
   dstr.r_save = stdrp->r_save;
   dstr.r_abbrvar = stdrp->r_abbrvar;
   stdr.r_month = TM_DECEMBER;
   stdr.r_dycode = DC_DOM;
   stdr.r_dayofmonth = 31;
   stdr.r_tod = SECSPERDAY + stdrp->r_save;
   stdr.r_todisstd = stdr.r_todisut = 0;
   stdr.r_isdst = 0;
   stdr.r_save = 0;
   stdr.r_abbrvar
    = (stdabbrrp ? stdabbrrp->r_abbrvar : "");
   dstrp = &dstr;
   stdrp = &stdr;
  }
 }
 if (stdrp == ((void*)0) && (zp->z_nrules != 0 || zp->z_isdst))
  return -1;
 abbrvar = (stdrp == ((void*)0)) ? "" : stdrp->r_abbrvar;
 len = doabbr(result, zp, abbrvar, 0, 0, 1);
 offsetlen = stringoffset(result + len, -zp->z_stdoff);
 if (!offsetlen)
 {
  result[0] = '\0';
  return -1;
 }
 len += offsetlen;
 if (dstrp == ((void*)0))
  return compat;
 len += doabbr(result + len, zp, dstrp->r_abbrvar,
      dstrp->r_isdst, dstrp->r_save, 1);
 if (dstrp->r_save != SECSPERMIN * MINSPERHOUR)
 {
  offsetlen = stringoffset(result + len,
         -(zp->z_stdoff + dstrp->r_save));
  if (!offsetlen)
  {
   result[0] = '\0';
   return -1;
  }
  len += offsetlen;
 }
 result[len++] = ',';
 c = stringrule(result + len, dstrp, dstrp->r_save, zp->z_stdoff);
 if (c < 0)
 {
  result[0] = '\0';
  return -1;
 }
 if (compat < c)
  compat = c;
 len += strlen(result + len);
 result[len++] = ',';
 c = stringrule(result + len, stdrp, dstrp->r_save, zp->z_stdoff);
 if (c < 0)
 {
  result[0] = '\0';
  return -1;
 }
 if (compat < c)
  compat = c;
 return compat;
}
