
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clause_relids; } ;
typedef int SpecialJoinInfo ;
typedef TYPE_1__ RestrictInfo ;
typedef int Node ;


 scalar_t__ BMS_MULTIPLE ;
 int NumRelids (int *) ;
 scalar_t__ bms_membership (int ) ;

__attribute__((used)) static inline bool
treat_as_join_clause(Node *clause, RestrictInfo *rinfo,
      int varRelid, SpecialJoinInfo *sjinfo)
{
 if (varRelid != 0)
 {




  return 0;
 }
 else if (sjinfo == ((void*)0))
 {




  return 0;
 }
 else
 {
  if (rinfo)
   return (bms_membership(rinfo->clause_relids) == BMS_MULTIPLE);
  else
   return (NumRelids(clause) > 1);
 }
}
