
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Scan ;
typedef int Plan ;


 int WRITE_UINT_FIELD (int ) ;
 int _outPlanInfo (int ,int const*) ;
 int scanrelid ;

__attribute__((used)) static void
_outScanInfo(StringInfo str, const Scan *node)
{
 _outPlanInfo(str, (const Plan *) node);

 WRITE_UINT_FIELD(scanrelid);
}
