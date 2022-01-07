
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int SeqScan ;
typedef int Scan ;


 int WRITE_NODE_TYPE (char*) ;
 int _outScanInfo (int ,int const*) ;

__attribute__((used)) static void
_outSeqScan(StringInfo str, const SeqScan *node)
{
 WRITE_NODE_TYPE("SEQSCAN");

 _outScanInfo(str, (const Scan *) node);
}
