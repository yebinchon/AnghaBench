
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {size_t slaves; TYPE_3__* slot; TYPE_3__* slave; TYPE_1__ host; } ;
typedef TYPE_2__ redisCachedMaster ;
struct TYPE_7__ {int addr; } ;


 int pefree (TYPE_3__*,int) ;
 int zend_string_release (int ) ;

__attribute__((used)) static void cluster_free_cached_master(redisCachedMaster *cm) {
    size_t i;


    for (i = 0; i < cm->slaves; i++) {
        zend_string_release(cm->slave[i].addr);
    }


    zend_string_release(cm->host.addr);
    pefree(cm->slave, 1);
    pefree(cm->slot, 1);
}
