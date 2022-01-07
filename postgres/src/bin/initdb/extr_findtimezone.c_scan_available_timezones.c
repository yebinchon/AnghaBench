
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tztry {int dummy; } ;
struct stat {int st_mode; } ;


 scalar_t__ MAXPGPATH ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ TZ_STRLEN_MAX ;
 int errno ;
 int fprintf (int ,char*,char*,char*) ;
 char** pgfnames (char*) ;
 int pgfnames_cleanup (char**) ;
 int score_timezone (char*,struct tztry*) ;
 int snprintf (char*,scalar_t__,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 char* strerror (int ) ;
 int strlcpy (char*,char*,scalar_t__) ;
 int strlen (char*) ;
 int zone_name_pref (char*) ;

__attribute__((used)) static void
scan_available_timezones(char *tzdir, char *tzdirsub, struct tztry *tt,
       int *bestscore, char *bestzonename)
{
 int tzdir_orig_len = strlen(tzdir);
 char **names;
 char **namep;

 names = pgfnames(tzdir);
 if (!names)
  return;

 for (namep = names; *namep; namep++)
 {
  char *name = *namep;
  struct stat statbuf;


  if (name[0] == '.')
   continue;

  snprintf(tzdir + tzdir_orig_len, MAXPGPATH - tzdir_orig_len,
     "/%s", name);

  if (stat(tzdir, &statbuf) != 0)
  {




   tzdir[tzdir_orig_len] = '\0';
   continue;
  }

  if (S_ISDIR(statbuf.st_mode))
  {

   scan_available_timezones(tzdir, tzdirsub, tt,
          bestscore, bestzonename);
  }
  else
  {

   int score = score_timezone(tzdirsub, tt);

   if (score > *bestscore)
   {
    *bestscore = score;
    strlcpy(bestzonename, tzdirsub, TZ_STRLEN_MAX + 1);
   }
   else if (score == *bestscore)
   {

    int namepref = (zone_name_pref(tzdirsub) -
          zone_name_pref(bestzonename));

    if (namepref > 0 ||
     (namepref == 0 &&
      (strlen(tzdirsub) < strlen(bestzonename) ||
       (strlen(tzdirsub) == strlen(bestzonename) &&
        strcmp(tzdirsub, bestzonename) < 0))))
     strlcpy(bestzonename, tzdirsub, TZ_STRLEN_MAX + 1);
   }
  }


  tzdir[tzdir_orig_len] = '\0';
 }

 pgfnames_cleanup(names);
}
