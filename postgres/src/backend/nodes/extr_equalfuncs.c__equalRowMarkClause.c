
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RowMarkClause ;


 int COMPARE_SCALAR_FIELD (int ) ;
 int pushedDown ;
 int rti ;
 int strength ;
 int waitPolicy ;

__attribute__((used)) static bool
_equalRowMarkClause(const RowMarkClause *a, const RowMarkClause *b)
{
 COMPARE_SCALAR_FIELD(rti);
 COMPARE_SCALAR_FIELD(strength);
 COMPARE_SCALAR_FIELD(waitPolicy);
 COMPARE_SCALAR_FIELD(pushedDown);

 return 1;
}
