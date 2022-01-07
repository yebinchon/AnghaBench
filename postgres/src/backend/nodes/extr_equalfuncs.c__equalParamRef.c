
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ParamRef ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int location ;
 int number ;

__attribute__((used)) static bool
_equalParamRef(const ParamRef *a, const ParamRef *b)
{
 COMPARE_SCALAR_FIELD(number);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
