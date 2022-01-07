
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ status; int activeSubid; int name; } ;
typedef TYPE_1__* Portal ;


 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 int GetCurrentSubTransactionId () ;
 scalar_t__ PORTAL_ACTIVE ;
 scalar_t__ PORTAL_READY ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

void
MarkPortalActive(Portal portal)
{

 if (portal->status != PORTAL_READY)
  ereport(ERROR,
    (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
     errmsg("portal \"%s\" cannot be run", portal->name)));

 portal->status = PORTAL_ACTIVE;
 portal->activeSubid = GetCurrentSubTransactionId();
}
