
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Scan ;
typedef int IndexScan ;


 int ScanDirection ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int _outScanInfo (int ,int const*) ;
 int indexid ;
 int indexorderby ;
 int indexorderbyops ;
 int indexorderbyorig ;
 int indexorderdir ;
 int indexqual ;
 int indexqualorig ;

__attribute__((used)) static void
_outIndexScan(StringInfo str, const IndexScan *node)
{
 WRITE_NODE_TYPE("INDEXSCAN");

 _outScanInfo(str, (const Scan *) node);

 WRITE_OID_FIELD(indexid);
 WRITE_NODE_FIELD(indexqual);
 WRITE_NODE_FIELD(indexqualorig);
 WRITE_NODE_FIELD(indexorderby);
 WRITE_NODE_FIELD(indexorderbyorig);
 WRITE_NODE_FIELD(indexorderbyops);
 WRITE_ENUM_FIELD(indexorderdir, ScanDirection);
}
