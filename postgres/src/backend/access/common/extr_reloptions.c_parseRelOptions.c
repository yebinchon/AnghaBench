
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int isset; TYPE_2__* gen; } ;
typedef TYPE_1__ relopt_value ;
typedef int relopt_kind ;
struct TYPE_7__ {int kinds; int namelen; int name; } ;
typedef int Datum ;
typedef int ArrayType ;


 int * DatumGetArrayTypeP (int ) ;
 void* DatumGetPointer (int ) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ PointerIsValid (void*) ;
 int TEXTOID ;
 char* TextDatumGetCString (int ) ;
 char* VARDATA (int ) ;
 int VARHDRSZ ;
 int VARSIZE (int ) ;
 int deconstruct_array (int *,int ,int,int,char,int **,int *,int*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int initialize_reloptions () ;
 scalar_t__ need_initialization ;
 TYPE_1__* palloc (int) ;
 int parse_one_reloption (TYPE_1__*,char*,int,int) ;
 int pfree (int *) ;
 TYPE_2__** relOpts ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static relopt_value *
parseRelOptions(Datum options, bool validate, relopt_kind kind,
    int *numrelopts)
{
 relopt_value *reloptions = ((void*)0);
 int numoptions = 0;
 int i;
 int j;

 if (need_initialization)
  initialize_reloptions();



 for (i = 0; relOpts[i]; i++)
  if (relOpts[i]->kinds & kind)
   numoptions++;

 if (numoptions > 0)
 {
  reloptions = palloc(numoptions * sizeof(relopt_value));

  for (i = 0, j = 0; relOpts[i]; i++)
  {
   if (relOpts[i]->kinds & kind)
   {
    reloptions[j].gen = relOpts[i];
    reloptions[j].isset = 0;
    j++;
   }
  }
 }


 if (PointerIsValid(DatumGetPointer(options)))
 {
  ArrayType *array = DatumGetArrayTypeP(options);
  Datum *optiondatums;
  int noptions;

  deconstruct_array(array, TEXTOID, -1, 0, 'i',
        &optiondatums, ((void*)0), &noptions);

  for (i = 0; i < noptions; i++)
  {
   char *text_str = VARDATA(optiondatums[i]);
   int text_len = VARSIZE(optiondatums[i]) - VARHDRSZ;
   int j;


   for (j = 0; j < numoptions; j++)
   {
    int kw_len = reloptions[j].gen->namelen;

    if (text_len > kw_len && text_str[kw_len] == '=' &&
     strncmp(text_str, reloptions[j].gen->name, kw_len) == 0)
    {
     parse_one_reloption(&reloptions[j], text_str, text_len,
          validate);
     break;
    }
   }

   if (j >= numoptions && validate)
   {
    char *s;
    char *p;

    s = TextDatumGetCString(optiondatums[i]);
    p = strchr(s, '=');
    if (p)
     *p = '\0';
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("unrecognized parameter \"%s\"", s)));
   }
  }


  pfree(optiondatums);
  if (((void *) array) != DatumGetPointer(options))
   pfree(array);
 }

 *numrelopts = numoptions;
 return reloptions;
}
