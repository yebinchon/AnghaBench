
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int nspell; int nAffixData; char** AffixData; int lenAffixData; int Dictionary; TYPE_3__** Spell; scalar_t__ useFlagAliases; } ;
struct TYPE_8__ {int affix; void* len; } ;
struct TYPE_9__ {char* flag; TYPE_1__ d; } ;
struct TYPE_10__ {int word; TYPE_2__ p; } ;
typedef int SPELL ;
typedef TYPE_4__ IspellDict ;


 int Assert (int) ;
 scalar_t__ ERANGE ;
 int ERRCODE_CONFIG_FILE_ERROR ;
 int ERROR ;
 int cmpspell ;
 int cmpspellaffix ;
 char* cpstrdup (TYPE_4__*,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 scalar_t__ errno ;
 int mkSPNode (TYPE_4__*,int ,int,int ) ;
 scalar_t__ palloc0 (int) ;
 int qsort (void*,int,int,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 void* strlen (int ) ;
 int strtol (char*,char**,int) ;
 int t_isdigit (char*) ;
 int t_isspace (char*) ;

void
NISortDictionary(IspellDict *Conf)
{
 int i;
 int naffix = 0;
 int curaffix;







 if (Conf->useFlagAliases)
 {
  for (i = 0; i < Conf->nspell; i++)
  {
   char *end;

   if (*Conf->Spell[i]->p.flag != '\0')
   {
    curaffix = strtol(Conf->Spell[i]->p.flag, &end, 10);
    if (Conf->Spell[i]->p.flag == end || errno == ERANGE)
     ereport(ERROR,
       (errcode(ERRCODE_CONFIG_FILE_ERROR),
        errmsg("invalid affix alias \"%s\"",
         Conf->Spell[i]->p.flag)));
    if (curaffix < 0 || curaffix >= Conf->nAffixData)
     ereport(ERROR,
       (errcode(ERRCODE_CONFIG_FILE_ERROR),
        errmsg("invalid affix alias \"%s\"",
         Conf->Spell[i]->p.flag)));
    if (*end != '\0' && !t_isdigit(end) && !t_isspace(end))
     ereport(ERROR,
       (errcode(ERRCODE_CONFIG_FILE_ERROR),
        errmsg("invalid affix alias \"%s\"",
         Conf->Spell[i]->p.flag)));
   }
   else
   {




    curaffix = 0;
   }

   Conf->Spell[i]->p.d.affix = curaffix;
   Conf->Spell[i]->p.d.len = strlen(Conf->Spell[i]->word);
  }
 }

 else
 {

  qsort((void *) Conf->Spell, Conf->nspell, sizeof(SPELL *),
     cmpspellaffix);

  naffix = 0;
  for (i = 0; i < Conf->nspell; i++)
  {
   if (i == 0 ||
    strcmp(Conf->Spell[i]->p.flag, Conf->Spell[i - 1]->p.flag) != 0)
    naffix++;
  }






  Conf->AffixData = (char **) palloc0(naffix * sizeof(char *));

  curaffix = -1;
  for (i = 0; i < Conf->nspell; i++)
  {
   if (i == 0 ||
    strcmp(Conf->Spell[i]->p.flag, Conf->AffixData[curaffix]) != 0)
   {
    curaffix++;
    Assert(curaffix < naffix);
    Conf->AffixData[curaffix] = cpstrdup(Conf,
              Conf->Spell[i]->p.flag);
   }

   Conf->Spell[i]->p.d.affix = curaffix;
   Conf->Spell[i]->p.d.len = strlen(Conf->Spell[i]->word);
  }

  Conf->lenAffixData = Conf->nAffixData = naffix;
 }


 qsort((void *) Conf->Spell, Conf->nspell, sizeof(SPELL *), cmpspell);
 Conf->Dictionary = mkSPNode(Conf, 0, Conf->nspell, 0);
}
