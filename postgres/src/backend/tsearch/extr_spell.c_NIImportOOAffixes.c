
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int tsearch_readline_state ;
struct TYPE_9__ {int usecompound; int useFlagAliases; scalar_t__ flagMode; int nCompoundAffixFlag; char** AffixData; int lenAffixData; int nAffixData; scalar_t__ CompoundAffixFlags; } ;
typedef TYPE_1__ IspellDict ;
typedef int CompoundAffixFlag ;


 int BUFSIZ ;
 int ERRCODE_CONFIG_FILE_ERROR ;
 int ERROR ;
 int FF_COMPOUNDBEGIN ;
 int FF_COMPOUNDFLAG ;
 int FF_COMPOUNDFORBIDFLAG ;
 int FF_COMPOUNDLAST ;
 int FF_COMPOUNDMIDDLE ;
 int FF_COMPOUNDONLY ;
 int FF_COMPOUNDPERMITFLAG ;
 char FF_CROSSPRODUCT ;
 int FF_PREFIX ;
 int FF_SUFFIX ;
 scalar_t__ FM_CHAR ;
 scalar_t__ FM_LONG ;
 scalar_t__ FM_NUM ;
 int NIAddAffix (TYPE_1__*,char*,char,char*,char*,char*,int ) ;
 scalar_t__ STRNCMP (char*,char*) ;
 char* VoidString ;
 int addCompoundAffixFlagValue (TYPE_1__*,char*,int ) ;
 int atoi (char*) ;
 int cmpcmdflag ;
 char* cpstrdup (TYPE_1__*,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int getAffixFlagSet (TYPE_1__*,char*) ;
 int getCompoundAffixFlagValue (TYPE_1__*,int ) ;
 char* lowerstr_ctx (TYPE_1__*,char*) ;
 scalar_t__ palloc0 (int) ;
 int parse_ooaffentry (char*,char*,char*,char*,char*,char*) ;
 int pfree (char*) ;
 int pg_mblen (char*) ;
 int qsort (void*,int,int,int ) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 scalar_t__ t_iseq (char*,char) ;
 scalar_t__ t_isspace (char*) ;
 char* tsearch_readline (int *) ;
 int tsearch_readline_begin (int *,char const*) ;
 int tsearch_readline_end (int *) ;

__attribute__((used)) static void
NIImportOOAffixes(IspellDict *Conf, const char *filename)
{
 char type[BUFSIZ],
      *ptype = ((void*)0);
 char sflag[BUFSIZ];
 char mask[BUFSIZ],
      *pmask;
 char find[BUFSIZ],
      *pfind;
 char repl[BUFSIZ],
      *prepl;
 bool isSuffix = 0;
 int naffix = 0,
    curaffix = 0;
 int sflaglen = 0;
 char flagflags = 0;
 tsearch_readline_state trst;
 char *recoded;


 Conf->usecompound = 0;
 Conf->useFlagAliases = 0;
 Conf->flagMode = FM_CHAR;

 if (!tsearch_readline_begin(&trst, filename))
  ereport(ERROR,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("could not open affix file \"%s\": %m",
      filename)));

 while ((recoded = tsearch_readline(&trst)) != ((void*)0))
 {
  if (*recoded == '\0' || t_isspace(recoded) || t_iseq(recoded, '#'))
  {
   pfree(recoded);
   continue;
  }

  if (STRNCMP(recoded, "COMPOUNDFLAG") == 0)
   addCompoundAffixFlagValue(Conf, recoded + strlen("COMPOUNDFLAG"),
           FF_COMPOUNDFLAG);
  else if (STRNCMP(recoded, "COMPOUNDBEGIN") == 0)
   addCompoundAffixFlagValue(Conf, recoded + strlen("COMPOUNDBEGIN"),
           FF_COMPOUNDBEGIN);
  else if (STRNCMP(recoded, "COMPOUNDLAST") == 0)
   addCompoundAffixFlagValue(Conf, recoded + strlen("COMPOUNDLAST"),
           FF_COMPOUNDLAST);

  else if (STRNCMP(recoded, "COMPOUNDEND") == 0)
   addCompoundAffixFlagValue(Conf, recoded + strlen("COMPOUNDEND"),
           FF_COMPOUNDLAST);
  else if (STRNCMP(recoded, "COMPOUNDMIDDLE") == 0)
   addCompoundAffixFlagValue(Conf, recoded + strlen("COMPOUNDMIDDLE"),
           FF_COMPOUNDMIDDLE);
  else if (STRNCMP(recoded, "ONLYINCOMPOUND") == 0)
   addCompoundAffixFlagValue(Conf, recoded + strlen("ONLYINCOMPOUND"),
           FF_COMPOUNDONLY);
  else if (STRNCMP(recoded, "COMPOUNDPERMITFLAG") == 0)
   addCompoundAffixFlagValue(Conf,
           recoded + strlen("COMPOUNDPERMITFLAG"),
           FF_COMPOUNDPERMITFLAG);
  else if (STRNCMP(recoded, "COMPOUNDFORBIDFLAG") == 0)
   addCompoundAffixFlagValue(Conf,
           recoded + strlen("COMPOUNDFORBIDFLAG"),
           FF_COMPOUNDFORBIDFLAG);
  else if (STRNCMP(recoded, "FLAG") == 0)
  {
   char *s = recoded + strlen("FLAG");

   while (*s && t_isspace(s))
    s += pg_mblen(s);

   if (*s)
   {
    if (STRNCMP(s, "long") == 0)
     Conf->flagMode = FM_LONG;
    else if (STRNCMP(s, "num") == 0)
     Conf->flagMode = FM_NUM;
    else if (STRNCMP(s, "default") != 0)
     ereport(ERROR,
       (errcode(ERRCODE_CONFIG_FILE_ERROR),
        errmsg("Ispell dictionary supports only "
         "\"default\", \"long\", "
         "and \"num\" flag values")));
   }
  }

  pfree(recoded);
 }
 tsearch_readline_end(&trst);

 if (Conf->nCompoundAffixFlag > 1)
  qsort((void *) Conf->CompoundAffixFlags, Conf->nCompoundAffixFlag,
     sizeof(CompoundAffixFlag), cmpcmdflag);

 if (!tsearch_readline_begin(&trst, filename))
  ereport(ERROR,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("could not open affix file \"%s\": %m",
      filename)));

 while ((recoded = tsearch_readline(&trst)) != ((void*)0))
 {
  int fields_read;

  if (*recoded == '\0' || t_isspace(recoded) || t_iseq(recoded, '#'))
   goto nextline;

  fields_read = parse_ooaffentry(recoded, type, sflag, find, repl, mask);

  if (ptype)
   pfree(ptype);
  ptype = lowerstr_ctx(Conf, type);


  if (STRNCMP(ptype, "af") == 0)
  {

   if (!Conf->useFlagAliases)
   {
    Conf->useFlagAliases = 1;
    naffix = atoi(sflag);
    if (naffix <= 0)
     ereport(ERROR,
       (errcode(ERRCODE_CONFIG_FILE_ERROR),
        errmsg("invalid number of flag vector aliases")));


    naffix++;

    Conf->AffixData = (char **) palloc0(naffix * sizeof(char *));
    Conf->lenAffixData = Conf->nAffixData = naffix;


    Conf->AffixData[curaffix] = VoidString;
    curaffix++;
   }

   else
   {
    if (curaffix < naffix)
    {
     Conf->AffixData[curaffix] = cpstrdup(Conf, sflag);
     curaffix++;
    }
    else
     ereport(ERROR,
       (errcode(ERRCODE_CONFIG_FILE_ERROR),
        errmsg("number of aliases exceeds specified number %d",
         naffix - 1)));
   }
   goto nextline;
  }

  if (fields_read < 4 ||
   (STRNCMP(ptype, "sfx") != 0 && STRNCMP(ptype, "pfx") != 0))
   goto nextline;

  sflaglen = strlen(sflag);
  if (sflaglen == 0
   || (sflaglen > 1 && Conf->flagMode == FM_CHAR)
   || (sflaglen > 2 && Conf->flagMode == FM_LONG))
   goto nextline;






  if (fields_read == 4)
  {
   isSuffix = (STRNCMP(ptype, "sfx") == 0);
   if (t_iseq(find, 'y') || t_iseq(find, 'Y'))
    flagflags = FF_CROSSPRODUCT;
   else
    flagflags = 0;
  }





  else
  {
   char *ptr;
   int aflg = 0;


   if ((ptr = strchr(repl, '/')) != ((void*)0))
    aflg |= getCompoundAffixFlagValue(Conf,
              getAffixFlagSet(Conf,
                  ptr + 1));

   prepl = lowerstr_ctx(Conf, repl);
   if ((ptr = strchr(prepl, '/')) != ((void*)0))
    *ptr = '\0';
   pfind = lowerstr_ctx(Conf, find);
   pmask = lowerstr_ctx(Conf, mask);
   if (t_iseq(find, '0'))
    *pfind = '\0';
   if (t_iseq(repl, '0'))
    *prepl = '\0';

   NIAddAffix(Conf, sflag, flagflags | aflg, pmask, pfind, prepl,
        isSuffix ? FF_SUFFIX : FF_PREFIX);
   pfree(prepl);
   pfree(pfind);
   pfree(pmask);
  }

nextline:
  pfree(recoded);
 }

 tsearch_readline_end(&trst);
 if (ptype)
  pfree(ptype);
}
