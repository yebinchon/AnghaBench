
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* rel; } ;
struct TYPE_4__ {int relid; } ;
typedef int Node ;
typedef TYPE_2__ IndexOptInfo ;


 scalar_t__ bms_is_member (int ,int ) ;
 scalar_t__ contain_volatile_functions (int *) ;
 int pull_varnos (int *) ;

bool
is_pseudo_constant_for_index(Node *expr, IndexOptInfo *index)
{

 if (bms_is_member(index->rel->relid, pull_varnos(expr)))
  return 0;
 if (contain_volatile_functions(expr))
  return 0;
 return 1;
}
