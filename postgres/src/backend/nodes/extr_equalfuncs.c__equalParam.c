
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Param ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int location ;
 int paramcollid ;
 int paramid ;
 int paramkind ;
 int paramtype ;
 int paramtypmod ;

__attribute__((used)) static bool
_equalParam(const Param *a, const Param *b)
{
 COMPARE_SCALAR_FIELD(paramkind);
 COMPARE_SCALAR_FIELD(paramid);
 COMPARE_SCALAR_FIELD(paramtype);
 COMPARE_SCALAR_FIELD(paramtypmod);
 COMPARE_SCALAR_FIELD(paramcollid);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
