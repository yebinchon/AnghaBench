
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int JsonbValue ;
typedef int JsonbParseState ;
typedef scalar_t__ JsonbIteratorToken ;
typedef int JsonbIterator ;
typedef int Jsonb ;
typedef int Datum ;


 int Assert (int ) ;
 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERROR ;
 long INT_MAX ;
 long INT_MIN ;
 int JB_PATH_CREATE ;
 int JB_PATH_CREATE_OR_INSERT ;
 int JB_PATH_INSERT_AFTER ;
 int JB_PATH_INSERT_BEFORE ;
 int JB_PATH_REPLACE ;
 scalar_t__ JsonbIteratorNext (int **,int *,int) ;
 char* TextDatumGetCString (int ) ;
 scalar_t__ WJB_BEGIN_ARRAY ;
 scalar_t__ WJB_BEGIN_OBJECT ;
 scalar_t__ WJB_END_ARRAY ;
 scalar_t__ WJB_END_OBJECT ;
 int addJsonbToParseState (int **,int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int,char*) ;
 scalar_t__ errno ;
 int pushJsonbValue (int **,scalar_t__,int *) ;
 int setPath (int **,int *,int*,int,int **,int,int *,int) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static void
setPathArray(JsonbIterator **it, Datum *path_elems, bool *path_nulls,
    int path_len, JsonbParseState **st, int level,
    Jsonb *newval, uint32 nelems, int op_type)
{
 JsonbValue v;
 int idx,
    i;
 bool done = 0;


 if (level < path_len && !path_nulls[level])
 {
  char *c = TextDatumGetCString(path_elems[level]);
  long lindex;
  char *badp;

  errno = 0;
  lindex = strtol(c, &badp, 10);
  if (errno != 0 || badp == c || *badp != '\0' || lindex > INT_MAX ||
   lindex < INT_MIN)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
      errmsg("path element at position %d is not an integer: \"%s\"",
       level + 1, c)));
  idx = lindex;
 }
 else
  idx = nelems;

 if (idx < 0)
 {
  if (-idx > nelems)
   idx = INT_MIN;
  else
   idx = nelems + idx;
 }

 if (idx > 0 && idx > nelems)
  idx = nelems;







 if ((idx == INT_MIN || nelems == 0) && (level == path_len - 1) &&
  (op_type & JB_PATH_CREATE_OR_INSERT))
 {
  Assert(newval != ((void*)0));
  addJsonbToParseState(st, newval);
  done = 1;
 }


 for (i = 0; i < nelems; i++)
 {
  JsonbIteratorToken r;

  if (i == idx && level < path_len)
  {
   if (level == path_len - 1)
   {
    r = JsonbIteratorNext(it, &v, 1);

    if (op_type & (JB_PATH_INSERT_BEFORE | JB_PATH_CREATE))
     addJsonbToParseState(st, newval);






    if (op_type & (JB_PATH_INSERT_AFTER | JB_PATH_INSERT_BEFORE))
     (void) pushJsonbValue(st, r, &v);

    if (op_type & (JB_PATH_INSERT_AFTER | JB_PATH_REPLACE))
     addJsonbToParseState(st, newval);

    done = 1;
   }
   else
    (void) setPath(it, path_elems, path_nulls, path_len,
          st, level + 1, newval, op_type);
  }
  else
  {
   r = JsonbIteratorNext(it, &v, 0);

   (void) pushJsonbValue(st, r, r < WJB_BEGIN_ARRAY ? &v : ((void*)0));

   if (r == WJB_BEGIN_ARRAY || r == WJB_BEGIN_OBJECT)
   {
    int walking_level = 1;

    while (walking_level != 0)
    {
     r = JsonbIteratorNext(it, &v, 0);

     if (r == WJB_BEGIN_ARRAY || r == WJB_BEGIN_OBJECT)
      ++walking_level;
     if (r == WJB_END_ARRAY || r == WJB_END_OBJECT)
      --walking_level;

     (void) pushJsonbValue(st, r, r < WJB_BEGIN_ARRAY ? &v : ((void*)0));
    }
   }

   if ((op_type & JB_PATH_CREATE_OR_INSERT) && !done &&
    level == path_len - 1 && i == nelems - 1)
   {
    addJsonbToParseState(st, newval);
   }
  }
 }
}
