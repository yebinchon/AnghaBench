
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PREDICATELOCKTARGETTAG ;


 int Assert (int) ;
 int GET_PREDICATELOCKTARGETTAG_TYPE (int const) ;



 int max_predicate_locks_per_page ;
 int max_predicate_locks_per_relation ;
 int max_predicate_locks_per_xact ;

__attribute__((used)) static int
MaxPredicateChildLocks(const PREDICATELOCKTARGETTAG *tag)
{
 switch (GET_PREDICATELOCKTARGETTAG_TYPE(*tag))
 {
  case 129:
   return max_predicate_locks_per_relation < 0
    ? (max_predicate_locks_per_xact
       / (-max_predicate_locks_per_relation)) - 1
    : max_predicate_locks_per_relation;

  case 130:
   return max_predicate_locks_per_page;

  case 128:





   Assert(0);
   return 0;
 }


 Assert(0);
 return 0;
}
