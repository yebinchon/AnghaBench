
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BooleanTest ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int arg ;
 int booltesttype ;
 int location ;

__attribute__((used)) static bool
_equalBooleanTest(const BooleanTest *a, const BooleanTest *b)
{
 COMPARE_NODE_FIELD(arg);
 COMPARE_SCALAR_FIELD(booltesttype);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
