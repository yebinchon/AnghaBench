
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlternativeSubPlan ;


 int COMPARE_NODE_FIELD (int ) ;
 int subplans ;

__attribute__((used)) static bool
_equalAlternativeSubPlan(const AlternativeSubPlan *a, const AlternativeSubPlan *b)
{
 COMPARE_NODE_FIELD(subplans);

 return 1;
}
