
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WithClause ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int ctes ;
 int location ;
 int recursive ;

__attribute__((used)) static bool
_equalWithClause(const WithClause *a, const WithClause *b)
{
 COMPARE_NODE_FIELD(ctes);
 COMPARE_SCALAR_FIELD(recursive);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
