
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SubqueryScan ;
typedef int StringInfo ;
typedef int Scan ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outScanInfo (int ,int const*) ;
 int subplan ;

__attribute__((used)) static void
_outSubqueryScan(StringInfo str, const SubqueryScan *node)
{
 WRITE_NODE_TYPE("SUBQUERYSCAN");

 _outScanInfo(str, (const Scan *) node);

 WRITE_NODE_FIELD(subplan);
}
