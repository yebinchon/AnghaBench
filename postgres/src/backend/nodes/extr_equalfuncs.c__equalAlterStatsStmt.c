
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterStatsStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int defnames ;
 int missing_ok ;
 int stxstattarget ;

__attribute__((used)) static bool
_equalAlterStatsStmt(const AlterStatsStmt *a, const AlterStatsStmt *b)
{
 COMPARE_NODE_FIELD(defnames);
 COMPARE_SCALAR_FIELD(stxstattarget);
 COMPARE_SCALAR_FIELD(missing_ok);

 return 1;
}
