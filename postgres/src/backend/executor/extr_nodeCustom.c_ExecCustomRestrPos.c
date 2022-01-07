
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* methods; } ;
struct TYPE_5__ {int (* RestrPosCustomScan ) (TYPE_2__*) ;int CustomName; } ;
typedef TYPE_2__ CustomScanState ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int stub1 (TYPE_2__*) ;

void
ExecCustomRestrPos(CustomScanState *node)
{
 if (!node->methods->RestrPosCustomScan)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("custom scan \"%s\" does not support MarkPos",
      node->methods->CustomName)));
 node->methods->RestrPosCustomScan(node);
}
