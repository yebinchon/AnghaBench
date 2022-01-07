
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateFunctionStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int funcname ;
 int is_procedure ;
 int options ;
 int parameters ;
 int replace ;
 int returnType ;

__attribute__((used)) static bool
_equalCreateFunctionStmt(const CreateFunctionStmt *a, const CreateFunctionStmt *b)
{
 COMPARE_SCALAR_FIELD(is_procedure);
 COMPARE_SCALAR_FIELD(replace);
 COMPARE_NODE_FIELD(funcname);
 COMPARE_NODE_FIELD(parameters);
 COMPARE_NODE_FIELD(returnType);
 COMPARE_NODE_FIELD(options);

 return 1;
}
