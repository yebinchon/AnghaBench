
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nAffixData; char** AffixData; scalar_t__ useFlagAliases; } ;
typedef TYPE_1__ IspellDict ;


 scalar_t__ ERANGE ;
 int ERRCODE_CONFIG_FILE_ERROR ;
 int ERROR ;
 char* VoidString ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 scalar_t__ errno ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static char *
getAffixFlagSet(IspellDict *Conf, char *s)
{
 if (Conf->useFlagAliases && *s != '\0')
 {
  int curaffix;
  char *end;

  curaffix = strtol(s, &end, 10);
  if (s == end || errno == ERANGE)
   ereport(ERROR,
     (errcode(ERRCODE_CONFIG_FILE_ERROR),
      errmsg("invalid affix alias \"%s\"", s)));

  if (curaffix > 0 && curaffix < Conf->nAffixData)





   return Conf->AffixData[curaffix];
  else if (curaffix > Conf->nAffixData)
   ereport(ERROR,
     (errcode(ERRCODE_CONFIG_FILE_ERROR),
      errmsg("invalid affix alias \"%s\"", s)));
  return VoidString;
 }
 else
  return s;
}
