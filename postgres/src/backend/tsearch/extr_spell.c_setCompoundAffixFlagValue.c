
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_7__ {int i; int s; } ;
struct TYPE_9__ {scalar_t__ flagMode; int value; TYPE_1__ flag; } ;
struct TYPE_8__ {scalar_t__ flagMode; } ;
typedef TYPE_2__ IspellDict ;
typedef TYPE_3__ CompoundAffixFlag ;


 scalar_t__ ERANGE ;
 int ERRCODE_CONFIG_FILE_ERROR ;
 int ERROR ;
 int FLAGNUM_MAXSIZE ;
 scalar_t__ FM_NUM ;
 int cpstrdup (TYPE_2__*,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 scalar_t__ errno ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static void
setCompoundAffixFlagValue(IspellDict *Conf, CompoundAffixFlag *entry,
        char *s, uint32 val)
{
 if (Conf->flagMode == FM_NUM)
 {
  char *next;
  int i;

  i = strtol(s, &next, 10);
  if (s == next || errno == ERANGE)
   ereport(ERROR,
     (errcode(ERRCODE_CONFIG_FILE_ERROR),
      errmsg("invalid affix flag \"%s\"", s)));
  if (i < 0 || i > FLAGNUM_MAXSIZE)
   ereport(ERROR,
     (errcode(ERRCODE_CONFIG_FILE_ERROR),
      errmsg("affix flag \"%s\" is out of range", s)));

  entry->flag.i = i;
 }
 else
  entry->flag.s = cpstrdup(Conf, s);

 entry->flagMode = Conf->flagMode;
 entry->value = val;
}
