
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Scan ;
typedef int BitmapIndexScan ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int _outScanInfo (int ,int const*) ;
 int indexid ;
 int indexqual ;
 int indexqualorig ;
 int isshared ;

__attribute__((used)) static void
_outBitmapIndexScan(StringInfo str, const BitmapIndexScan *node)
{
 WRITE_NODE_TYPE("BITMAPINDEXSCAN");

 _outScanInfo(str, (const Scan *) node);

 WRITE_OID_FIELD(indexid);
 WRITE_BOOL_FIELD(isshared);
 WRITE_NODE_FIELD(indexqual);
 WRITE_NODE_FIELD(indexqualorig);
}
