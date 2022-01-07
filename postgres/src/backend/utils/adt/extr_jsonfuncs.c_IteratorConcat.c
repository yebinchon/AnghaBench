
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int isScalar; } ;
typedef int JsonbValue ;
typedef int JsonbParseState ;
typedef scalar_t__ JsonbIteratorToken ;
typedef TYPE_1__ JsonbIterator ;


 int Assert (int) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 scalar_t__ JsonbIteratorNext (TYPE_1__**,int *,int) ;
 scalar_t__ WJB_BEGIN_ARRAY ;
 scalar_t__ WJB_BEGIN_OBJECT ;
 scalar_t__ WJB_DONE ;
 scalar_t__ WJB_ELEM ;
 scalar_t__ WJB_END_ARRAY ;
 scalar_t__ WJB_END_OBJECT ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int * pushJsonbValue (int **,scalar_t__,int *) ;

__attribute__((used)) static JsonbValue *
IteratorConcat(JsonbIterator **it1, JsonbIterator **it2,
      JsonbParseState **state)
{
 JsonbValue v1,
    v2,
      *res = ((void*)0);
 JsonbIteratorToken r1,
    r2,
    rk1,
    rk2;

 r1 = rk1 = JsonbIteratorNext(it1, &v1, 0);
 r2 = rk2 = JsonbIteratorNext(it2, &v2, 0);




 if (rk1 == WJB_BEGIN_OBJECT && rk2 == WJB_BEGIN_OBJECT)
 {




  pushJsonbValue(state, r1, ((void*)0));
  while ((r1 = JsonbIteratorNext(it1, &v1, 1)) != WJB_END_OBJECT)
   pushJsonbValue(state, r1, &v1);





  while ((r2 = JsonbIteratorNext(it2, &v2, 1)) != WJB_DONE)
   res = pushJsonbValue(state, r2, r2 != WJB_END_OBJECT ? &v2 : ((void*)0));
 }




 else if (rk1 == WJB_BEGIN_ARRAY && rk2 == WJB_BEGIN_ARRAY)
 {
  pushJsonbValue(state, r1, ((void*)0));

  while ((r1 = JsonbIteratorNext(it1, &v1, 1)) != WJB_END_ARRAY)
  {
   Assert(r1 == WJB_ELEM);
   pushJsonbValue(state, r1, &v1);
  }

  while ((r2 = JsonbIteratorNext(it2, &v2, 1)) != WJB_END_ARRAY)
  {
   Assert(r2 == WJB_ELEM);
   pushJsonbValue(state, WJB_ELEM, &v2);
  }

  res = pushJsonbValue(state, WJB_END_ARRAY, ((void*)0) );
 }

 else if (((rk1 == WJB_BEGIN_ARRAY && !(*it1)->isScalar) && rk2 == WJB_BEGIN_OBJECT) ||
    (rk1 == WJB_BEGIN_OBJECT && (rk2 == WJB_BEGIN_ARRAY && !(*it2)->isScalar)))
 {

  JsonbIterator **it_array = rk1 == WJB_BEGIN_ARRAY ? it1 : it2;
  JsonbIterator **it_object = rk1 == WJB_BEGIN_OBJECT ? it1 : it2;

  bool prepend = (rk1 == WJB_BEGIN_OBJECT);

  pushJsonbValue(state, WJB_BEGIN_ARRAY, ((void*)0));

  if (prepend)
  {
   pushJsonbValue(state, WJB_BEGIN_OBJECT, ((void*)0));
   while ((r1 = JsonbIteratorNext(it_object, &v1, 1)) != WJB_DONE)
    pushJsonbValue(state, r1, r1 != WJB_END_OBJECT ? &v1 : ((void*)0));

   while ((r2 = JsonbIteratorNext(it_array, &v2, 1)) != WJB_DONE)
    res = pushJsonbValue(state, r2, r2 != WJB_END_ARRAY ? &v2 : ((void*)0));
  }
  else
  {
   while ((r1 = JsonbIteratorNext(it_array, &v1, 1)) != WJB_END_ARRAY)
    pushJsonbValue(state, r1, &v1);

   pushJsonbValue(state, WJB_BEGIN_OBJECT, ((void*)0));
   while ((r2 = JsonbIteratorNext(it_object, &v2, 1)) != WJB_DONE)
    pushJsonbValue(state, r2, r2 != WJB_END_OBJECT ? &v2 : ((void*)0));

   res = pushJsonbValue(state, WJB_END_ARRAY, ((void*)0));
  }
 }
 else
 {




  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid concatenation of jsonb objects")));
 }

 return res;
}
