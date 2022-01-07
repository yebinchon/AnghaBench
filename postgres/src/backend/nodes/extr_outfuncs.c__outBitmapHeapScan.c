
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Scan ;
typedef int BitmapHeapScan ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int _outScanInfo (int ,int const*) ;
 int bitmapqualorig ;

__attribute__((used)) static void
_outBitmapHeapScan(StringInfo str, const BitmapHeapScan *node)
{
 WRITE_NODE_TYPE("BITMAPHEAPSCAN");

 _outScanInfo(str, (const Scan *) node);

 WRITE_NODE_FIELD(bitmapqualorig);
}
