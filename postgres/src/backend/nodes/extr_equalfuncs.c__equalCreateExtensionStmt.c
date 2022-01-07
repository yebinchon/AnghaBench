
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateExtensionStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int extname ;
 int if_not_exists ;
 int options ;

__attribute__((used)) static bool
_equalCreateExtensionStmt(const CreateExtensionStmt *a, const CreateExtensionStmt *b)
{
 COMPARE_STRING_FIELD(extname);
 COMPARE_SCALAR_FIELD(if_not_exists);
 COMPARE_NODE_FIELD(options);

 return 1;
}
