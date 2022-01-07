
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int constlen; int constbyval; int constvalue; scalar_t__ constisnull; } ;
typedef TYPE_1__ Const ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int constbyval ;
 int constcollid ;
 int constisnull ;
 int constlen ;
 int consttype ;
 int consttypmod ;
 int datumIsEqual (int ,int ,int ,int ) ;
 int location ;

__attribute__((used)) static bool
_equalConst(const Const *a, const Const *b)
{
 COMPARE_SCALAR_FIELD(consttype);
 COMPARE_SCALAR_FIELD(consttypmod);
 COMPARE_SCALAR_FIELD(constcollid);
 COMPARE_SCALAR_FIELD(constlen);
 COMPARE_SCALAR_FIELD(constisnull);
 COMPARE_SCALAR_FIELD(constbyval);
 COMPARE_LOCATION_FIELD(location);





 if (a->constisnull)
  return 1;
 return datumIsEqual(a->constvalue, b->constvalue,
      a->constbyval, a->constlen);
}
