
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ValuesScan ;
typedef int StringInfo ;
typedef int Scan ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outScanInfo (int ,int const*) ;
 int values_lists ;

__attribute__((used)) static void
_outValuesScan(StringInfo str, const ValuesScan *node)
{
 WRITE_NODE_TYPE("VALUESSCAN");

 _outScanInfo(str, (const Scan *) node);

 WRITE_NODE_FIELD(values_lists);
}
