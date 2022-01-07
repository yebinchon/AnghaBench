
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CoerceViaIO ;


 int COMPARE_COERCIONFORM_FIELD (int ) ;
 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int arg ;
 int coerceformat ;
 int location ;
 int resultcollid ;
 int resulttype ;

__attribute__((used)) static bool
_equalCoerceViaIO(const CoerceViaIO *a, const CoerceViaIO *b)
{
 COMPARE_NODE_FIELD(arg);
 COMPARE_SCALAR_FIELD(resulttype);
 COMPARE_SCALAR_FIELD(resultcollid);
 COMPARE_COERCIONFORM_FIELD(coerceformat);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
