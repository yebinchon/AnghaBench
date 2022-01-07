
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* methods; } ;
struct TYPE_4__ {int CustomName; } ;
typedef int StringInfo ;
typedef int Scan ;
typedef TYPE_2__ CustomScan ;


 int WRITE_BITMAPSET_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_UINT_FIELD (int ) ;
 int _outScanInfo (int ,int const*) ;
 int appendStringInfoString (int ,char*) ;
 int custom_exprs ;
 int custom_plans ;
 int custom_private ;
 int custom_relids ;
 int custom_scan_tlist ;
 int flags ;
 int outToken (int ,int ) ;

__attribute__((used)) static void
_outCustomScan(StringInfo str, const CustomScan *node)
{
 WRITE_NODE_TYPE("CUSTOMSCAN");

 _outScanInfo(str, (const Scan *) node);

 WRITE_UINT_FIELD(flags);
 WRITE_NODE_FIELD(custom_plans);
 WRITE_NODE_FIELD(custom_exprs);
 WRITE_NODE_FIELD(custom_private);
 WRITE_NODE_FIELD(custom_scan_tlist);
 WRITE_BITMAPSET_FIELD(custom_relids);

 appendStringInfoString(str, " :methods ");
 outToken(str, node->methods->CustomName);
}
