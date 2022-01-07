
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterOpFamilyStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int amname ;
 int isDrop ;
 int items ;
 int opfamilyname ;

__attribute__((used)) static bool
_equalAlterOpFamilyStmt(const AlterOpFamilyStmt *a, const AlterOpFamilyStmt *b)
{
 COMPARE_NODE_FIELD(opfamilyname);
 COMPARE_STRING_FIELD(amname);
 COMPARE_SCALAR_FIELD(isDrop);
 COMPARE_NODE_FIELD(items);

 return 1;
}
