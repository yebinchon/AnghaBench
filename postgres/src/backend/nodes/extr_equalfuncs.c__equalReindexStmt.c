
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ReindexStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int concurrent ;
 int kind ;
 int name ;
 int options ;
 int relation ;

__attribute__((used)) static bool
_equalReindexStmt(const ReindexStmt *a, const ReindexStmt *b)
{
 COMPARE_SCALAR_FIELD(kind);
 COMPARE_NODE_FIELD(relation);
 COMPARE_STRING_FIELD(name);
 COMPARE_SCALAR_FIELD(options);
 COMPARE_SCALAR_FIELD(concurrent);

 return 1;
}
