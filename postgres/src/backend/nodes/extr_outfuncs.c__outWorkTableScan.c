
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WorkTableScan ;
typedef int StringInfo ;
typedef int Scan ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outScanInfo (int ,int const*) ;
 int wtParam ;

__attribute__((used)) static void
_outWorkTableScan(StringInfo str, const WorkTableScan *node)
{
 WRITE_NODE_TYPE("WORKTABLESCAN");

 _outScanInfo(str, (const Scan *) node);

 WRITE_INT_FIELD(wtParam);
}
