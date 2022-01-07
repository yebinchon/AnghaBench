
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateOpClassStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int amname ;
 int datatype ;
 int isDefault ;
 int items ;
 int opclassname ;
 int opfamilyname ;

__attribute__((used)) static bool
_equalCreateOpClassStmt(const CreateOpClassStmt *a, const CreateOpClassStmt *b)
{
 COMPARE_NODE_FIELD(opclassname);
 COMPARE_NODE_FIELD(opfamilyname);
 COMPARE_STRING_FIELD(amname);
 COMPARE_NODE_FIELD(datatype);
 COMPARE_NODE_FIELD(items);
 COMPARE_SCALAR_FIELD(isDefault);

 return 1;
}
