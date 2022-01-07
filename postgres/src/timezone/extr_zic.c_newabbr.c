
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int GRANDPARENTED ;
 int TZ_MAX_CHARS ;
 int ZIC_MAX_ABBR_LEN_WO_WARN ;
 char* _ (char*) ;
 int charcnt ;
 int * chars ;
 int error (char*) ;
 int exit (int ) ;
 scalar_t__ is_alpha (char const) ;
 scalar_t__ noise ;
 scalar_t__ strcmp (char const*,int ) ;
 int strcpy (int *,char const*) ;
 int strlen (char const*) ;
 int warning (char*,char const*,char const*) ;

__attribute__((used)) static void
newabbr(const char *string)
{
 int i;

 if (strcmp(string, GRANDPARENTED) != 0)
 {
  const char *cp;
  const char *mp;

  cp = string;
  mp = ((void*)0);
  while (is_alpha(*cp) || ('0' <= *cp && *cp <= '9')
      || *cp == '-' || *cp == '+')
   ++cp;
  if (noise && cp - string < 3)
   mp = _("time zone abbreviation has fewer than 3 characters");
  if (cp - string > ZIC_MAX_ABBR_LEN_WO_WARN)
   mp = _("time zone abbreviation has too many characters");
  if (*cp != '\0')
   mp = _("time zone abbreviation differs from POSIX standard");
  if (mp != ((void*)0))
   warning("%s (%s)", mp, string);
 }
 i = strlen(string) + 1;
 if (charcnt + i > TZ_MAX_CHARS)
 {
  error(_("too many, or too long, time zone abbreviations"));
  exit(EXIT_FAILURE);
 }
 strcpy(&chars[charcnt], string);
 charcnt += i;
}
