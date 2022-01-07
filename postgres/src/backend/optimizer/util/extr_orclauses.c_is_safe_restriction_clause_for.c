
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int relids; } ;
struct TYPE_5__ {scalar_t__ clause; int clause_relids; scalar_t__ pseudoconstant; } ;
typedef TYPE_1__ RestrictInfo ;
typedef TYPE_2__ RelOptInfo ;
typedef int Node ;


 int bms_equal (int ,int ) ;
 scalar_t__ contain_volatile_functions (int *) ;

__attribute__((used)) static bool
is_safe_restriction_clause_for(RestrictInfo *rinfo, RelOptInfo *rel)
{





 if (rinfo->pseudoconstant)
  return 0;
 if (!bms_equal(rinfo->clause_relids, rel->relids))
  return 0;


 if (contain_volatile_functions((Node *) rinfo->clause))
  return 0;

 return 1;
}
