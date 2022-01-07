
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RelabelType ;


 int COMPARE_COERCIONFORM_FIELD (int ) ;
 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int arg ;
 int location ;
 int relabelformat ;
 int resultcollid ;
 int resulttype ;
 int resulttypmod ;

__attribute__((used)) static bool
_equalRelabelType(const RelabelType *a, const RelabelType *b)
{
 COMPARE_NODE_FIELD(arg);
 COMPARE_SCALAR_FIELD(resulttype);
 COMPARE_SCALAR_FIELD(resulttypmod);
 COMPARE_SCALAR_FIELD(resultcollid);
 COMPARE_COERCIONFORM_FIELD(relabelformat);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
