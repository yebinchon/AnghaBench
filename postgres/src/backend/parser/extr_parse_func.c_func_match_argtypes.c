
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int args; } ;
typedef int Oid ;
typedef TYPE_1__* FuncCandidateList ;


 int COERCION_IMPLICIT ;
 scalar_t__ can_coerce_type (int,int *,int ,int ) ;

int
func_match_argtypes(int nargs,
     Oid *input_typeids,
     FuncCandidateList raw_candidates,
     FuncCandidateList *candidates)
{
 FuncCandidateList current_candidate;
 FuncCandidateList next_candidate;
 int ncandidates = 0;

 *candidates = ((void*)0);

 for (current_candidate = raw_candidates;
   current_candidate != ((void*)0);
   current_candidate = next_candidate)
 {
  next_candidate = current_candidate->next;
  if (can_coerce_type(nargs, input_typeids, current_candidate->args,
       COERCION_IMPLICIT))
  {
   current_candidate->next = *candidates;
   *candidates = current_candidate;
   ncandidates++;
  }
 }

 return ncandidates;
}
