
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mt753x_mapping {int * vids; int * etags; int * members; int * pvids; } ;
struct gsw_mt753x {TYPE_2__* vlan_entries; TYPE_1__* port_entries; } ;
struct TYPE_4__ {int vid; int etags; int member; } ;
struct TYPE_3__ {int pvid; } ;


 int MT753X_NUM_PORTS ;
 int MT753X_NUM_VLANS ;

void mt753x_apply_mapping(struct gsw_mt753x *gsw, struct mt753x_mapping *map)
{
 int i = 0;

 for (i = 0; i < MT753X_NUM_PORTS; i++)
  gsw->port_entries[i].pvid = map->pvids[i];

 for (i = 0; i < MT753X_NUM_VLANS; i++) {
  gsw->vlan_entries[i].member = map->members[i];
  gsw->vlan_entries[i].etags = map->etags[i];
  gsw->vlan_entries[i].vid = map->vids[i];
 }
}
