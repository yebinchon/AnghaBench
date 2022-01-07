
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rule {int r_month; int r_todisstd; int r_todisut; int r_loyear; int r_hiyear; scalar_t__ r_dycode; int r_wday; int r_dayofmonth; int * r_yrtype; int r_hiwasnum; int r_lowasnum; int r_tod; } ;
struct lookup {int l_value; } ;


 scalar_t__ DC_DOM ;
 scalar_t__ DC_DOWGEQ ;
 void* DC_DOWLEQ ;
 int EXIT_FAILURE ;



 void* ZIC_MAX ;
 void* ZIC_MIN ;
 char* _ (char*) ;
 int begin_years ;
 struct lookup* byword (char const*,int ) ;
 void* ecpyalloc (char const*) ;
 int end_years ;
 int error (char*) ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,int) ;
 int free (char*) ;
 int gethms (char*,char*) ;
 int lasts ;
 scalar_t__** len_months ;
 int lowerit (char) ;
 int mon_names ;
 char* progname ;
 int sscanf (char const*,char*,int*,char*) ;
 int stderr ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int warning (char*,char const*) ;
 int wday_names ;

__attribute__((used)) static void
rulesub(struct rule *rp, const char *loyearp, const char *hiyearp,
  const char *typep, const char *monthp, const char *dayp,
  const char *timep)
{
 const struct lookup *lp;
 const char *cp;
 char *dp;
 char *ep;
 char xs;


 int year_tmp;

 if ((lp = byword(monthp, mon_names)) == ((void*)0))
 {
  error(_("invalid month name"));
  return;
 }
 rp->r_month = lp->l_value;
 rp->r_todisstd = 0;
 rp->r_todisut = 0;
 dp = ecpyalloc(timep);
 if (*dp != '\0')
 {
  ep = dp + strlen(dp) - 1;
  switch (lowerit(*ep))
  {
   case 's':
    rp->r_todisstd = 1;
    rp->r_todisut = 0;
    *ep = '\0';
    break;
   case 'w':
    rp->r_todisstd = 0;
    rp->r_todisut = 0;
    *ep = '\0';
    break;
   case 'g':
   case 'u':
   case 'z':
    rp->r_todisstd = 1;
    rp->r_todisut = 1;
    *ep = '\0';
    break;
  }
 }
 rp->r_tod = gethms(dp, _("invalid time of day"));
 free(dp);




 cp = loyearp;
 lp = byword(cp, begin_years);
 rp->r_lowasnum = lp == ((void*)0);
 if (!rp->r_lowasnum)
  switch (lp->l_value)
  {
   case 129:
    rp->r_loyear = ZIC_MIN;
    break;
   case 130:
    rp->r_loyear = ZIC_MAX;
    break;
   default:
    fprintf(stderr,
      _("%s: panic: Invalid l_value %d\n"),
      progname, lp->l_value);
    exit(EXIT_FAILURE);
  }
 else if (sscanf(cp, "%d%c", &year_tmp, &xs) == 1)
  rp->r_loyear = year_tmp;
 else
 {
  error(_("invalid starting year"));
  return;
 }
 cp = hiyearp;
 lp = byword(cp, end_years);
 rp->r_hiwasnum = lp == ((void*)0);
 if (!rp->r_hiwasnum)
  switch (lp->l_value)
  {
   case 129:
    rp->r_hiyear = ZIC_MIN;
    break;
   case 130:
    rp->r_hiyear = ZIC_MAX;
    break;
   case 128:
    rp->r_hiyear = rp->r_loyear;
    break;
   default:
    fprintf(stderr,
      _("%s: panic: Invalid l_value %d\n"),
      progname, lp->l_value);
    exit(EXIT_FAILURE);
  }
 else if (sscanf(cp, "%d%c", &year_tmp, &xs) == 1)
  rp->r_hiyear = year_tmp;
 else
 {
  error(_("invalid ending year"));
  return;
 }
 if (rp->r_loyear > rp->r_hiyear)
 {
  error(_("starting year greater than ending year"));
  return;
 }
 if (*typep == '\0')
  rp->r_yrtype = ((void*)0);
 else
 {
  if (rp->r_loyear == rp->r_hiyear)
  {
   error(_("typed single year"));
   return;
  }
  warning(_("year type \"%s\" is obsolete; use \"-\" instead"),
    typep);
  rp->r_yrtype = ecpyalloc(typep);
 }





 dp = ecpyalloc(dayp);
 if ((lp = byword(dp, lasts)) != ((void*)0))
 {
  rp->r_dycode = DC_DOWLEQ;
  rp->r_wday = lp->l_value;
  rp->r_dayofmonth = len_months[1][rp->r_month];
 }
 else
 {
  if ((ep = strchr(dp, '<')) != ((void*)0))
   rp->r_dycode = DC_DOWLEQ;
  else if ((ep = strchr(dp, '>')) != ((void*)0))
   rp->r_dycode = DC_DOWGEQ;
  else
  {
   ep = dp;
   rp->r_dycode = DC_DOM;
  }
  if (rp->r_dycode != DC_DOM)
  {
   *ep++ = 0;
   if (*ep++ != '=')
   {
    error(_("invalid day of month"));
    free(dp);
    return;
   }
   if ((lp = byword(dp, wday_names)) == ((void*)0))
   {
    error(_("invalid weekday name"));
    free(dp);
    return;
   }
   rp->r_wday = lp->l_value;
  }
  if (sscanf(ep, "%d%c", &rp->r_dayofmonth, &xs) != 1 ||
   rp->r_dayofmonth <= 0 ||
   (rp->r_dayofmonth > len_months[1][rp->r_month]))
  {
   error(_("invalid day of month"));
   free(dp);
   return;
  }
 }
 free(dp);
}
