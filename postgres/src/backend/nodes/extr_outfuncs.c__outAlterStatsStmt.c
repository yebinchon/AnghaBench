
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int AlterStatsStmt ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int defnames ;
 int missing_ok ;
 int stxstattarget ;

__attribute__((used)) static void
_outAlterStatsStmt(StringInfo str, const AlterStatsStmt *node)
{
 WRITE_NODE_TYPE("ALTERSTATSSTMT");

 WRITE_NODE_FIELD(defnames);
 WRITE_INT_FIELD(stxstattarget);
 WRITE_BOOL_FIELD(missing_ok);
}
