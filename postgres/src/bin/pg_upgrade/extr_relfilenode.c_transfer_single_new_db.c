
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ cat_ver; } ;
struct TYPE_12__ {TYPE_2__ controldata; } ;
struct TYPE_8__ {scalar_t__ cat_ver; } ;
struct TYPE_11__ {int major_version; TYPE_1__ controldata; } ;
struct TYPE_10__ {int old_tablespace; } ;
typedef TYPE_3__ FileNameMap ;


 int GET_MAJOR_VERSION (int ) ;
 scalar_t__ VISIBILITY_MAP_CRASHSAFE_CAT_VER ;
 scalar_t__ VISIBILITY_MAP_FROZEN_BIT_CAT_VER ;
 TYPE_7__ new_cluster ;
 TYPE_6__ old_cluster ;
 scalar_t__ strcmp (int ,char*) ;
 int transfer_relfile (TYPE_3__*,char*,int) ;

__attribute__((used)) static void
transfer_single_new_db(FileNameMap *maps, int size, char *old_tablespace)
{
 int mapnum;
 bool vm_crashsafe_match = 1;
 bool vm_must_add_frozenbit = 0;





 if (old_cluster.controldata.cat_ver < VISIBILITY_MAP_CRASHSAFE_CAT_VER &&
  new_cluster.controldata.cat_ver >= VISIBILITY_MAP_CRASHSAFE_CAT_VER)
  vm_crashsafe_match = 0;




 if (old_cluster.controldata.cat_ver < VISIBILITY_MAP_FROZEN_BIT_CAT_VER &&
  new_cluster.controldata.cat_ver >= VISIBILITY_MAP_FROZEN_BIT_CAT_VER)
  vm_must_add_frozenbit = 1;

 for (mapnum = 0; mapnum < size; mapnum++)
 {
  if (old_tablespace == ((void*)0) ||
   strcmp(maps[mapnum].old_tablespace, old_tablespace) == 0)
  {

   transfer_relfile(&maps[mapnum], "", vm_must_add_frozenbit);


   if (GET_MAJOR_VERSION(old_cluster.major_version) >= 804)
   {



    transfer_relfile(&maps[mapnum], "_fsm", vm_must_add_frozenbit);
    if (vm_crashsafe_match)
     transfer_relfile(&maps[mapnum], "_vm", vm_must_add_frozenbit);
   }
  }
 }
}
