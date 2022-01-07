
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonbValue ;
typedef int JsonbParseState ;
typedef int JsonValueListIterator ;
typedef int JsonValueList ;


 int JsonValueListInitIterator (int const*,int *) ;
 int * JsonValueListNext (int const*,int *) ;
 int WJB_BEGIN_ARRAY ;
 int WJB_ELEM ;
 int WJB_END_ARRAY ;
 int * pushJsonbValue (int **,int ,int *) ;

__attribute__((used)) static JsonbValue *
wrapItemsInArray(const JsonValueList *items)
{
 JsonbParseState *ps = ((void*)0);
 JsonValueListIterator it;
 JsonbValue *jbv;

 pushJsonbValue(&ps, WJB_BEGIN_ARRAY, ((void*)0));

 JsonValueListInitIterator(items, &it);
 while ((jbv = JsonValueListNext(items, &it)))
  pushJsonbValue(&ps, WJB_ELEM, jbv);

 return pushJsonbValue(&ps, WJB_END_ARRAY, ((void*)0));
}
