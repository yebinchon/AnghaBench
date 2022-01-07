
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {void* refsCol; void* xrefsCol; scalar_t__ addr; int core; TYPE_1__* fcn; int mainCol; int cur; } ;
struct TYPE_9__ {TYPE_1__* fcn; scalar_t__ addr; } ;
struct TYPE_8__ {scalar_t__ addr; } ;
typedef TYPE_2__ RCoreVisualViewGraphItem ;
typedef TYPE_3__ RCoreVisualViewGraph ;


 void* __refs (int ,scalar_t__) ;
 int __reset_status (TYPE_3__*) ;
 int __sort (TYPE_3__*,void*) ;
 void* __xrefs (int ,scalar_t__) ;
 int free ;
 int r_list_free (int ) ;
 TYPE_2__* r_list_get_n (int ,int ) ;
 void* r_list_newf (int ) ;

__attribute__((used)) static void __sync_status_with_cursor(RCoreVisualViewGraph *status) {
 RCoreVisualViewGraphItem *item = r_list_get_n (status->mainCol, status->cur);
 if (!item) {
  r_list_free (status->mainCol);
  __reset_status (status);
  return;
 }

 status->addr = item->addr;
 status->fcn = item->fcn;


 if (status->fcn && status->fcn->addr) {
  status->xrefsCol = __xrefs (status->core, status->fcn->addr);
  status->refsCol = __refs (status->core, status->fcn->addr);
 } else {
  status->xrefsCol = __xrefs (status->core, status->addr);
  status->refsCol = r_list_newf (free);
 }
 __sort (status, status->xrefsCol);
 __sort (status, status->refsCol);
}
