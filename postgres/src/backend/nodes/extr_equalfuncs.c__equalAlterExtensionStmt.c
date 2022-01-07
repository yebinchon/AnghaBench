
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterExtensionStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int extname ;
 int options ;

__attribute__((used)) static bool
_equalAlterExtensionStmt(const AlterExtensionStmt *a, const AlterExtensionStmt *b)
{
 COMPARE_STRING_FIELD(extname);
 COMPARE_NODE_FIELD(options);

 return 1;
}
