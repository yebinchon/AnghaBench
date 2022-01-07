
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterPublicationStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int for_all_tables ;
 int options ;
 int pubname ;
 int tableAction ;
 int tables ;

__attribute__((used)) static bool
_equalAlterPublicationStmt(const AlterPublicationStmt *a,
         const AlterPublicationStmt *b)
{
 COMPARE_STRING_FIELD(pubname);
 COMPARE_NODE_FIELD(options);
 COMPARE_NODE_FIELD(tables);
 COMPARE_SCALAR_FIELD(for_all_tables);
 COMPARE_SCALAR_FIELD(tableAction);

 return 1;
}
