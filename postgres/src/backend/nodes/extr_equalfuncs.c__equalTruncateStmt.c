
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TruncateStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int behavior ;
 int relations ;
 int restart_seqs ;

__attribute__((used)) static bool
_equalTruncateStmt(const TruncateStmt *a, const TruncateStmt *b)
{
 COMPARE_NODE_FIELD(relations);
 COMPARE_SCALAR_FIELD(restart_seqs);
 COMPARE_SCALAR_FIELD(behavior);

 return 1;
}
