
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int chain ;
 int gid ;
 int kind ;
 int options ;
 int savepoint_name ;

__attribute__((used)) static bool
_equalTransactionStmt(const TransactionStmt *a, const TransactionStmt *b)
{
 COMPARE_SCALAR_FIELD(kind);
 COMPARE_NODE_FIELD(options);
 COMPARE_STRING_FIELD(savepoint_name);
 COMPARE_STRING_FIELD(gid);
 COMPARE_SCALAR_FIELD(chain);

 return 1;
}
