
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RangeVar ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int alias ;
 int catalogname ;
 int inh ;
 int location ;
 int relname ;
 int relpersistence ;
 int schemaname ;

__attribute__((used)) static bool
_equalRangeVar(const RangeVar *a, const RangeVar *b)
{
 COMPARE_STRING_FIELD(catalogname);
 COMPARE_STRING_FIELD(schemaname);
 COMPARE_STRING_FIELD(relname);
 COMPARE_SCALAR_FIELD(inh);
 COMPARE_SCALAR_FIELD(relpersistence);
 COMPARE_NODE_FIELD(alias);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
