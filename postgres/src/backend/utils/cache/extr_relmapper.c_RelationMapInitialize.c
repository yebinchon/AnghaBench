
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ num_mappings; } ;
struct TYPE_11__ {scalar_t__ num_mappings; } ;
struct TYPE_10__ {scalar_t__ num_mappings; scalar_t__ magic; } ;
struct TYPE_9__ {scalar_t__ num_mappings; } ;
struct TYPE_8__ {scalar_t__ num_mappings; } ;
struct TYPE_7__ {scalar_t__ num_mappings; scalar_t__ magic; } ;


 TYPE_6__ active_local_updates ;
 TYPE_5__ active_shared_updates ;
 TYPE_4__ local_map ;
 TYPE_3__ pending_local_updates ;
 TYPE_2__ pending_shared_updates ;
 TYPE_1__ shared_map ;

void
RelationMapInitialize(void)
{

 shared_map.magic = 0;
 local_map.magic = 0;
 shared_map.num_mappings = 0;
 local_map.num_mappings = 0;
 active_shared_updates.num_mappings = 0;
 active_local_updates.num_mappings = 0;
 pending_shared_updates.num_mappings = 0;
 pending_local_updates.num_mappings = 0;
}
