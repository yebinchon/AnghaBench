
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DropdbStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int dbname ;
 int missing_ok ;
 int options ;

__attribute__((used)) static bool
_equalDropdbStmt(const DropdbStmt *a, const DropdbStmt *b)
{
 COMPARE_STRING_FIELD(dbname);
 COMPARE_SCALAR_FIELD(missing_ok);
 COMPARE_NODE_FIELD(options);

 return 1;
}
