
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int val; } ;
typedef TYPE_1__ A_Const ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int equal (int *,int *) ;
 int location ;

__attribute__((used)) static bool
_equalAConst(const A_Const *a, const A_Const *b)
{
 if (!equal(&a->val, &b->val))
  return 0;
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
