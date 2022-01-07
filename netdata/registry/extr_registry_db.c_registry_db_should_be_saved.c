
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ log_count; scalar_t__ save_registry_every_entries; } ;


 int D_REGISTRY ;
 int debug (int ,char*,scalar_t__,scalar_t__) ;
 TYPE_1__ registry ;

int registry_db_should_be_saved(void) {
    debug(D_REGISTRY, "log entries %llu, max %llu", registry.log_count, registry.save_registry_every_entries);
    return registry.log_count > registry.save_registry_every_entries;
}
