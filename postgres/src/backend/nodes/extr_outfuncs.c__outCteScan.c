
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Scan ;
typedef int CteScan ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outScanInfo (int ,int const*) ;
 int cteParam ;
 int ctePlanId ;

__attribute__((used)) static void
_outCteScan(StringInfo str, const CteScan *node)
{
 WRITE_NODE_TYPE("CTESCAN");

 _outScanInfo(str, (const Scan *) node);

 WRITE_INT_FIELD(ctePlanId);
 WRITE_INT_FIELD(cteParam);
}
