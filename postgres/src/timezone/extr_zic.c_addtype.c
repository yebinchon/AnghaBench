
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long zic_t ;


 int EXIT_FAILURE ;
 int TZ_MAX_TYPES ;
 int _ (char*) ;
 int charcnt ;
 int * chars ;
 int* desigidx ;
 int error (int ) ;
 int exit (int ) ;
 int* isdsts ;
 int newabbr (char const*) ;
 scalar_t__ strcmp (int *,char const*) ;
 int* ttisstds ;
 int* ttisuts ;
 int typecnt ;
 long* utoffs ;
 int want_bloat () ;

__attribute__((used)) static int
addtype(zic_t utoff, char const *abbr, bool isdst, bool ttisstd, bool ttisut)
{
 int i,
    j;

 if (!(-1L - 2147483647L <= utoff && utoff <= 2147483647L))
 {
  error(_("UT offset out of range"));
  exit(EXIT_FAILURE);
 }
 if (!want_bloat())
  ttisstd = ttisut = 0;

 for (j = 0; j < charcnt; ++j)
  if (strcmp(&chars[j], abbr) == 0)
   break;
 if (j == charcnt)
  newabbr(abbr);
 else
 {

  for (i = 0; i < typecnt; i++)
   if (utoff == utoffs[i] && isdst == isdsts[i] && j == desigidx[i]
    && ttisstd == ttisstds[i] && ttisut == ttisuts[i])
    return i;
 }




 if (typecnt >= TZ_MAX_TYPES)
 {
  error(_("too many local time types"));
  exit(EXIT_FAILURE);
 }
 i = typecnt++;
 utoffs[i] = utoff;
 isdsts[i] = isdst;
 ttisstds[i] = ttisstd;
 ttisuts[i] = ttisut;
 desigidx[i] = j;
 return i;
}
