
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int nCompoundAffixFlag; int mCompoundAffixFlag; int usecompound; int * CompoundAffixFlags; } ;
typedef TYPE_1__ IspellDict ;
typedef int CompoundAffixFlag ;


 int BUFSIZ ;
 int COPYCHAR (char*,char*) ;
 int ERRCODE_CONFIG_FILE_ERROR ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int pg_mblen (char*) ;
 scalar_t__ repalloc (void*,int) ;
 int setCompoundAffixFlagValue (TYPE_1__*,int *,char*,int ) ;
 scalar_t__ t_isspace (char*) ;
 scalar_t__ tmpalloc (int) ;

__attribute__((used)) static void
addCompoundAffixFlagValue(IspellDict *Conf, char *s, uint32 val)
{
 CompoundAffixFlag *newValue;
 char sbuf[BUFSIZ];
 char *sflag;
 int clen;

 while (*s && t_isspace(s))
  s += pg_mblen(s);

 if (!*s)
  ereport(ERROR,
    (errcode(ERRCODE_CONFIG_FILE_ERROR),
     errmsg("syntax error")));


 sflag = sbuf;
 while (*s && !t_isspace(s) && *s != '\n')
 {
  clen = pg_mblen(s);
  COPYCHAR(sflag, s);
  sflag += clen;
  s += clen;
 }
 *sflag = '\0';


 if (Conf->nCompoundAffixFlag >= Conf->mCompoundAffixFlag)
 {
  if (Conf->mCompoundAffixFlag)
  {
   Conf->mCompoundAffixFlag *= 2;
   Conf->CompoundAffixFlags = (CompoundAffixFlag *)
    repalloc((void *) Conf->CompoundAffixFlags,
       Conf->mCompoundAffixFlag * sizeof(CompoundAffixFlag));
  }
  else
  {
   Conf->mCompoundAffixFlag = 10;
   Conf->CompoundAffixFlags = (CompoundAffixFlag *)
    tmpalloc(Conf->mCompoundAffixFlag * sizeof(CompoundAffixFlag));
  }
 }

 newValue = Conf->CompoundAffixFlags + Conf->nCompoundAffixFlag;

 setCompoundAffixFlagValue(Conf, newValue, sbuf, val);

 Conf->usecompound = 1;
 Conf->nCompoundAffixFlag++;
}
