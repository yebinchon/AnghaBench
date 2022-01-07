
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SQLValueFunction ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int location ;
 int op ;
 int type ;
 int typmod ;

__attribute__((used)) static bool
_equalSQLValueFunction(const SQLValueFunction *a, const SQLValueFunction *b)
{
 COMPARE_SCALAR_FIELD(op);
 COMPARE_SCALAR_FIELD(type);
 COMPARE_SCALAR_FIELD(typmod);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
