
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterTSDictionaryStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int dictname ;
 int options ;

__attribute__((used)) static bool
_equalAlterTSDictionaryStmt(const AlterTSDictionaryStmt *a, const AlterTSDictionaryStmt *b)
{
 COMPARE_NODE_FIELD(dictname);
 COMPARE_NODE_FIELD(options);

 return 1;
}
