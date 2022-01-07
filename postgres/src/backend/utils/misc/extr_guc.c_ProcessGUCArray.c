
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;
typedef int GucContext ;
typedef int GucAction ;
typedef int Datum ;
typedef int ArrayType ;


 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 int* ARR_LBOUND (int *) ;
 int ARR_NDIM (int *) ;
 int Assert (int) ;
 int ERRCODE_SYNTAX_ERROR ;
 int ParseLongOption (char*,char**,char**) ;
 scalar_t__ TEXTOID ;
 char* TextDatumGetCString (int ) ;
 int WARNING ;
 int array_ref (int *,int,int*,int,int,int,char,int*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int free (char*) ;
 int pfree (char*) ;
 int set_config_option (char*,char*,int ,int ,int ,int,int ,int) ;

void
ProcessGUCArray(ArrayType *array,
    GucContext context, GucSource source, GucAction action)
{
 int i;

 Assert(array != ((void*)0));
 Assert(ARR_ELEMTYPE(array) == TEXTOID);
 Assert(ARR_NDIM(array) == 1);
 Assert(ARR_LBOUND(array)[0] == 1);

 for (i = 1; i <= ARR_DIMS(array)[0]; i++)
 {
  Datum d;
  bool isnull;
  char *s;
  char *name;
  char *value;

  d = array_ref(array, 1, &i,
       -1 ,
       -1 ,
       0 ,
       'i' ,
       &isnull);

  if (isnull)
   continue;

  s = TextDatumGetCString(d);

  ParseLongOption(s, &name, &value);
  if (!value)
  {
   ereport(WARNING,
     (errcode(ERRCODE_SYNTAX_ERROR),
      errmsg("could not parse setting for parameter \"%s\"",
       name)));
   free(name);
   continue;
  }

  (void) set_config_option(name, value,
         context, source,
         action, 1, 0, 0);

  free(name);
  if (value)
   free(value);
  pfree(s);
 }
}
