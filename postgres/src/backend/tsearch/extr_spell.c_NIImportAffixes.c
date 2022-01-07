
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tsearch_readline_state ;
struct TYPE_6__ {int usecompound; int useFlagAliases; int flagMode; } ;
typedef TYPE_1__ IspellDict ;


 int BUFSIZ ;
 int COPYCHAR (char*,char*) ;
 int ERRCODE_CONFIG_FILE_ERROR ;
 int ERROR ;
 int FF_COMPOUNDFLAG ;
 char FF_COMPOUNDONLY ;
 char FF_CROSSPRODUCT ;
 int FF_PREFIX ;
 int FF_SUFFIX ;
 int FM_CHAR ;
 int NIAddAffix (TYPE_1__*,char*,char,char*,char*,char*,int ) ;
 int NIImportOOAffixes (TYPE_1__*,char const*) ;
 scalar_t__ STRNCMP (char*,char*) ;
 int addCompoundAffixFlagValue (TYPE_1__*,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 char* findchar2 (char*,char,char) ;
 char* lowerstr (char*) ;
 int parse_affentry (char*,char*,char*,char*) ;
 int pfree (char*) ;
 int pg_mblen (char*) ;
 scalar_t__ t_isspace (char*) ;
 char* tsearch_readline (int *) ;
 int tsearch_readline_begin (int *,char const*) ;
 int tsearch_readline_end (int *) ;

void
NIImportAffixes(IspellDict *Conf, const char *filename)
{
 char *pstr = ((void*)0);
 char flag[BUFSIZ];
 char mask[BUFSIZ];
 char find[BUFSIZ];
 char repl[BUFSIZ];
 char *s;
 bool suffixes = 0;
 bool prefixes = 0;
 char flagflags = 0;
 tsearch_readline_state trst;
 bool oldformat = 0;
 char *recoded = ((void*)0);

 if (!tsearch_readline_begin(&trst, filename))
  ereport(ERROR,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("could not open affix file \"%s\": %m",
      filename)));

 Conf->usecompound = 0;
 Conf->useFlagAliases = 0;
 Conf->flagMode = FM_CHAR;

 while ((recoded = tsearch_readline(&trst)) != ((void*)0))
 {
  pstr = lowerstr(recoded);


  if (*pstr == '#' || *pstr == '\n')
   goto nextline;

  if (STRNCMP(pstr, "compoundwords") == 0)
  {

   s = findchar2(recoded, 'l', 'L');
   if (s)
   {
    while (*s && !t_isspace(s))
     s += pg_mblen(s);
    while (*s && t_isspace(s))
     s += pg_mblen(s);

    if (*s && pg_mblen(s) == 1)
    {
     addCompoundAffixFlagValue(Conf, s, FF_COMPOUNDFLAG);
     Conf->usecompound = 1;
    }
    oldformat = 1;
    goto nextline;
   }
  }
  if (STRNCMP(pstr, "suffixes") == 0)
  {
   suffixes = 1;
   prefixes = 0;
   oldformat = 1;
   goto nextline;
  }
  if (STRNCMP(pstr, "prefixes") == 0)
  {
   suffixes = 0;
   prefixes = 1;
   oldformat = 1;
   goto nextline;
  }
  if (STRNCMP(pstr, "flag") == 0)
  {
   s = recoded + 4;
   flagflags = 0;

   while (*s && t_isspace(s))
    s += pg_mblen(s);

   if (*s == '*')
   {
    flagflags |= FF_CROSSPRODUCT;
    s++;
   }
   else if (*s == '~')
   {
    flagflags |= FF_COMPOUNDONLY;
    s++;
   }

   if (*s == '\\')
    s++;






   if (*s && pg_mblen(s) == 1)
   {
    COPYCHAR(flag, s);
    flag[1] = '\0';

    s++;
    if (*s == '\0' || *s == '#' || *s == '\n' || *s == ':' ||
     t_isspace(s))
    {
     oldformat = 1;
     goto nextline;
    }
   }
   goto isnewformat;
  }
  if (STRNCMP(recoded, "COMPOUNDFLAG") == 0 ||
   STRNCMP(recoded, "COMPOUNDMIN") == 0 ||
   STRNCMP(recoded, "PFX") == 0 ||
   STRNCMP(recoded, "SFX") == 0)
   goto isnewformat;

  if ((!suffixes) && (!prefixes))
   goto nextline;

  if (!parse_affentry(pstr, mask, find, repl))
   goto nextline;

  NIAddAffix(Conf, flag, flagflags, mask, find, repl, suffixes ? FF_SUFFIX : FF_PREFIX);

nextline:
  pfree(recoded);
  pfree(pstr);
 }
 tsearch_readline_end(&trst);
 return;

isnewformat:
 if (oldformat)
  ereport(ERROR,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("affix file contains both old-style and new-style commands")));
 tsearch_readline_end(&trst);

 NIImportOOAffixes(Conf, filename);
}
