
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SetToDefault ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int collation ;
 int location ;
 int typeId ;
 int typeMod ;

__attribute__((used)) static bool
_equalSetToDefault(const SetToDefault *a, const SetToDefault *b)
{
 COMPARE_SCALAR_FIELD(typeId);
 COMPARE_SCALAR_FIELD(typeMod);
 COMPARE_SCALAR_FIELD(collation);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
