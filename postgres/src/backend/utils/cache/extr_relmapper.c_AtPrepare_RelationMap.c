
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ num_mappings; } ;
struct TYPE_7__ {scalar_t__ num_mappings; } ;
struct TYPE_6__ {scalar_t__ num_mappings; } ;
struct TYPE_5__ {scalar_t__ num_mappings; } ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 TYPE_4__ active_local_updates ;
 TYPE_3__ active_shared_updates ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 TYPE_2__ pending_local_updates ;
 TYPE_1__ pending_shared_updates ;

void
AtPrepare_RelationMap(void)
{
 if (active_shared_updates.num_mappings != 0 ||
  active_local_updates.num_mappings != 0 ||
  pending_shared_updates.num_mappings != 0 ||
  pending_local_updates.num_mappings != 0)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot PREPARE a transaction that modified relation mapping")));
}
