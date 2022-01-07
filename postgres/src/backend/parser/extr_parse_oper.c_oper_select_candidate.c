
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int oid; } ;
typedef int Oid ;
typedef int FuncDetailCode ;
typedef TYPE_1__* FuncCandidateList ;


 int FUNCDETAIL_MULTIPLE ;
 int FUNCDETAIL_NORMAL ;
 int FUNCDETAIL_NOTFOUND ;
 int InvalidOid ;
 int func_match_argtypes (int,int *,TYPE_1__*,TYPE_1__**) ;
 TYPE_1__* func_select_candidate (int,int *,TYPE_1__*) ;

__attribute__((used)) static FuncDetailCode
oper_select_candidate(int nargs,
       Oid *input_typeids,
       FuncCandidateList candidates,
       Oid *operOid)
{
 int ncandidates;





 ncandidates = func_match_argtypes(nargs, input_typeids,
           candidates, &candidates);


 if (ncandidates == 0)
 {
  *operOid = InvalidOid;
  return FUNCDETAIL_NOTFOUND;
 }
 if (ncandidates == 1)
 {
  *operOid = candidates->oid;
  return FUNCDETAIL_NORMAL;
 }





 candidates = func_select_candidate(nargs, input_typeids, candidates);

 if (candidates)
 {
  *operOid = candidates->oid;
  return FUNCDETAIL_NORMAL;
 }

 *operOid = InvalidOid;
 return FUNCDETAIL_MULTIPLE;
}
