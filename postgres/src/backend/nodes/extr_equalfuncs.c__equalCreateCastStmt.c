
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateCastStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int context ;
 int func ;
 int inout ;
 int sourcetype ;
 int targettype ;

__attribute__((used)) static bool
_equalCreateCastStmt(const CreateCastStmt *a, const CreateCastStmt *b)
{
 COMPARE_NODE_FIELD(sourcetype);
 COMPARE_NODE_FIELD(targettype);
 COMPARE_NODE_FIELD(func);
 COMPARE_SCALAR_FIELD(context);
 COMPARE_SCALAR_FIELD(inout);

 return 1;
}
