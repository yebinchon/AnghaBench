
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ltree_level ;
struct TYPE_6__ {int numlevel; } ;
typedef TYPE_1__ ltree ;
typedef int int32 ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int * LEVEL_NEXT (int *) ;
 int * LTREE_FIRST (TYPE_1__*) ;
 scalar_t__ LTREE_HDRSIZE ;
 int SET_VARSIZE (TYPE_1__*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int memcpy (int *,char*,int) ;
 scalar_t__ palloc0 (scalar_t__) ;

__attribute__((used)) static ltree *
inner_subltree(ltree *t, int32 startpos, int32 endpos)
{
 char *start = ((void*)0),
      *end = ((void*)0);
 ltree_level *ptr = LTREE_FIRST(t);
 ltree *res;
 int i;

 if (startpos < 0 || endpos < 0 || startpos >= t->numlevel || startpos > endpos)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid positions")));

 if (endpos > t->numlevel)
  endpos = t->numlevel;

 start = end = (char *) ptr;
 for (i = 0; i < endpos; i++)
 {
  if (i == startpos)
   start = (char *) ptr;
  if (i == endpos - 1)
  {
   end = (char *) LEVEL_NEXT(ptr);
   break;
  }
  ptr = LEVEL_NEXT(ptr);
 }

 res = (ltree *) palloc0(LTREE_HDRSIZE + (end - start));
 SET_VARSIZE(res, LTREE_HDRSIZE + (end - start));
 res->numlevel = endpos - startpos;

 memcpy(LTREE_FIRST(res), start, end - start);

 return res;
}
