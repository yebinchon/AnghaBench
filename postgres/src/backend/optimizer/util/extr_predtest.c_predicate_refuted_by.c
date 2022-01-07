
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int List ;


 int * NIL ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;
 int predicate_refuted_by_recurse (int *,int *,int) ;

bool
predicate_refuted_by(List *predicate_list, List *clause_list,
      bool weak)
{
 Node *p,
      *c;

 if (predicate_list == NIL)
  return 0;
 if (clause_list == NIL)
  return 0;







 if (list_length(predicate_list) == 1)
  p = (Node *) linitial(predicate_list);
 else
  p = (Node *) predicate_list;
 if (list_length(clause_list) == 1)
  c = (Node *) linitial(clause_list);
 else
  c = (Node *) clause_list;


 return predicate_refuted_by_recurse(c, p, weak);
}
