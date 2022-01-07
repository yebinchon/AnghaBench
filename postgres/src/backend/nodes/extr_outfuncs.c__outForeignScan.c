
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int Scan ;
typedef int ForeignScan ;


 int CmdType ;
 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int _outScanInfo (int ,int const*) ;
 int fdw_exprs ;
 int fdw_private ;
 int fdw_recheck_quals ;
 int fdw_scan_tlist ;
 int fsSystemCol ;
 int fs_relids ;
 int fs_server ;
 int operation ;

__attribute__((used)) static void
_outForeignScan(StringInfo str, const ForeignScan *node)
{
 WRITE_NODE_TYPE("FOREIGNSCAN");

 _outScanInfo(str, (const Scan *) node);

 WRITE_ENUM_FIELD(operation, CmdType);
 WRITE_OID_FIELD(fs_server);
 WRITE_NODE_FIELD(fdw_exprs);
 WRITE_NODE_FIELD(fdw_private);
 WRITE_NODE_FIELD(fdw_scan_tlist);
 WRITE_NODE_FIELD(fdw_recheck_quals);
 WRITE_BITMAPSET_FIELD(fs_relids);
 WRITE_BOOL_FIELD(fsSystemCol);
}
