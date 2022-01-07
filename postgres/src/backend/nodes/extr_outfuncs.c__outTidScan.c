
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TidScan ;
typedef int StringInfo ;
typedef int Scan ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outScanInfo (int ,int const*) ;
 int tidquals ;

__attribute__((used)) static void
_outTidScan(StringInfo str, const TidScan *node)
{
 WRITE_NODE_TYPE("TIDSCAN");

 _outScanInfo(str, (const Scan *) node);

 WRITE_NODE_FIELD(tidquals);
}
