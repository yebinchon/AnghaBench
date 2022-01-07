
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ varattno; scalar_t__ vartype; scalar_t__ varno; scalar_t__ varlevelsup; } ;
typedef TYPE_1__ Var ;
struct TYPE_6__ {scalar_t__ relid; } ;
typedef TYPE_2__ RelOptInfo ;


 scalar_t__ SelfItemPointerAttributeNumber ;
 scalar_t__ TIDOID ;

__attribute__((used)) static inline bool
IsCTIDVar(Var *var, RelOptInfo *rel)
{

 if (var->varattno == SelfItemPointerAttributeNumber &&
  var->vartype == TIDOID &&
  var->varno == rel->relid &&
  var->varlevelsup == 0)
  return 1;
 return 0;
}
