
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int FunctionCallInfo ;
typedef int Datum ;
typedef int ArrayType ;


 int Assert (int) ;
 long INT_MAX ;
 long INT_MIN ;
 int * PG_GETARG_ARRAYTYPE_P (int) ;
 int * PG_GETARG_TEXT_PP (int ) ;
 int PG_RETURN_NULL () ;
 int PG_RETURN_TEXT_P (int *) ;
 int TEXTOID ;
 char* TextDatumGetCString (int ) ;
 scalar_t__ array_contains_nulls (int *) ;
 int deconstruct_array (int *,int ,int,int,char,int **,int**,int*) ;
 scalar_t__ errno ;
 int * get_worker (int *,char**,int*,int,int) ;
 void* palloc (int) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static Datum
get_path_all(FunctionCallInfo fcinfo, bool as_text)
{
 text *json = PG_GETARG_TEXT_PP(0);
 ArrayType *path = PG_GETARG_ARRAYTYPE_P(1);
 text *result;
 Datum *pathtext;
 bool *pathnulls;
 int npath;
 char **tpath;
 int *ipath;
 int i;
 if (array_contains_nulls(path))
  PG_RETURN_NULL();

 deconstruct_array(path, TEXTOID, -1, 0, 'i',
       &pathtext, &pathnulls, &npath);

 tpath = palloc(npath * sizeof(char *));
 ipath = palloc(npath * sizeof(int));

 for (i = 0; i < npath; i++)
 {
  Assert(!pathnulls[i]);
  tpath[i] = TextDatumGetCString(pathtext[i]);






  if (*tpath[i] != '\0')
  {
   long ind;
   char *endptr;

   errno = 0;
   ind = strtol(tpath[i], &endptr, 10);
   if (*endptr == '\0' && errno == 0 && ind <= INT_MAX && ind >= INT_MIN)
    ipath[i] = (int) ind;
   else
    ipath[i] = INT_MIN;
  }
  else
   ipath[i] = INT_MIN;
 }

 result = get_worker(json, tpath, ipath, npath, as_text);

 if (result != ((void*)0))
  PG_RETURN_TEXT_P(result);
 else
  PG_RETURN_NULL();
}
