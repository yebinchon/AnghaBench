
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateOpFamilyStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int amname ;
 int opfamilyname ;

__attribute__((used)) static bool
_equalCreateOpFamilyStmt(const CreateOpFamilyStmt *a, const CreateOpFamilyStmt *b)
{
 COMPARE_NODE_FIELD(opfamilyname);
 COMPARE_STRING_FIELD(amname);

 return 1;
}
