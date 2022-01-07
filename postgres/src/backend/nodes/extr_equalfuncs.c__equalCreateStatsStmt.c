
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateStatsStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int defnames ;
 int exprs ;
 int if_not_exists ;
 int relations ;
 int stat_types ;
 int stxcomment ;

__attribute__((used)) static bool
_equalCreateStatsStmt(const CreateStatsStmt *a, const CreateStatsStmt *b)
{
 COMPARE_NODE_FIELD(defnames);
 COMPARE_NODE_FIELD(stat_types);
 COMPARE_NODE_FIELD(exprs);
 COMPARE_NODE_FIELD(relations);
 COMPARE_STRING_FIELD(stxcomment);
 COMPARE_SCALAR_FIELD(if_not_exists);

 return 1;
}
