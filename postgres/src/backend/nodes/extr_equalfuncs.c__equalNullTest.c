
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NullTest ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int arg ;
 int argisrow ;
 int location ;
 int nulltesttype ;

__attribute__((used)) static bool
_equalNullTest(const NullTest *a, const NullTest *b)
{
 COMPARE_NODE_FIELD(arg);
 COMPARE_SCALAR_FIELD(nulltesttype);
 COMPARE_SCALAR_FIELD(argisrow);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
