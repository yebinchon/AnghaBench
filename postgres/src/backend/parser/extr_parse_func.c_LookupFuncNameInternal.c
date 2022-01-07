
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; int oid; int args; } ;
typedef int Oid ;
typedef int List ;
typedef int FuncLookupError ;
typedef TYPE_1__* FuncCandidateList ;


 int Assert (int) ;
 int FUNCLOOKUP_AMBIGUOUS ;
 int FUNCLOOKUP_NOSUCHFUNC ;
 TYPE_1__* FuncnameGetCandidates (int *,int,int ,int,int,int) ;
 int InvalidOid ;
 int NIL ;
 scalar_t__ memcmp (int const*,int ,int) ;

__attribute__((used)) static Oid
LookupFuncNameInternal(List *funcname, int nargs, const Oid *argtypes,
        bool missing_ok, FuncLookupError *lookupError)
{
 FuncCandidateList clist;


 Assert(argtypes != ((void*)0) || nargs == 0);


 *lookupError = FUNCLOOKUP_NOSUCHFUNC;

 clist = FuncnameGetCandidates(funcname, nargs, NIL, 0, 0,
          missing_ok);




 if (nargs < 0)
 {
  if (clist)
  {

   if (clist->next)
   {
    *lookupError = FUNCLOOKUP_AMBIGUOUS;
    return InvalidOid;
   }

   return clist->oid;
  }
  else
   return InvalidOid;
 }





 while (clist)
 {

  if (nargs == 0 ||
   memcmp(argtypes, clist->args, nargs * sizeof(Oid)) == 0)
   return clist->oid;
  clist = clist->next;
 }

 return InvalidOid;
}
