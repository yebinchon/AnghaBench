
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int CreateStatsStmt ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int defnames ;
 int exprs ;
 int if_not_exists ;
 int relations ;
 int stat_types ;
 int stxcomment ;

__attribute__((used)) static void
_outCreateStatsStmt(StringInfo str, const CreateStatsStmt *node)
{
 WRITE_NODE_TYPE("CREATESTATSSTMT");

 WRITE_NODE_FIELD(defnames);
 WRITE_NODE_FIELD(stat_types);
 WRITE_NODE_FIELD(exprs);
 WRITE_NODE_FIELD(relations);
 WRITE_STRING_FIELD(stxcomment);
 WRITE_BOOL_FIELD(if_not_exists);
}
