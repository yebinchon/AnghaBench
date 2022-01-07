
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ltree_gist ;
typedef int lquery ;
typedef int ArrayType ;


 scalar_t__ ARR_DATA_PTR (int *) ;
 int ARR_DIMS (int *) ;
 int ARR_NDIM (int *) ;
 int ArrayGetNItems (int,int ) ;
 int ERRCODE_ARRAY_SUBSCRIPT_ERROR ;
 int ERRCODE_NULL_VALUE_NOT_ALLOWED ;
 int ERROR ;
 int * NEXTVAL (int *) ;
 scalar_t__ array_contains_nulls (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ gist_between (int *,int *) ;
 scalar_t__ gist_qe (int *,int *) ;

__attribute__((used)) static bool
arrq_cons(ltree_gist *key, ArrayType *_query)
{
 lquery *query = (lquery *) ARR_DATA_PTR(_query);
 int num = ArrayGetNItems(ARR_NDIM(_query), ARR_DIMS(_query));

 if (ARR_NDIM(_query) > 1)
  ereport(ERROR,
    (errcode(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
     errmsg("array must be one-dimensional")));
 if (array_contains_nulls(_query))
  ereport(ERROR,
    (errcode(ERRCODE_NULL_VALUE_NOT_ALLOWED),
     errmsg("array must not contain nulls")));

 while (num > 0)
 {
  if (gist_qe(key, query) && gist_between(key, query))
   return 1;
  num--;
  query = NEXTVAL(query);
 }
 return 0;
}
