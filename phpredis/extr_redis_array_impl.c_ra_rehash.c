
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zend_fcall_info_cache ;
typedef int zend_fcall_info ;
struct TYPE_6__ {int index; TYPE_1__* prev; } ;
struct TYPE_5__ {int count; int * hosts; int * redis; } ;
typedef TYPE_2__ RedisArray ;


 int ra_rehash_server (TYPE_2__*,int *,int ,int ,int *,int *) ;

void
ra_rehash(RedisArray *ra, zend_fcall_info *z_cb, zend_fcall_info_cache *z_cb_cache) {
    int i;


    if(!ra->prev)
        return;

    for(i = 0; i < ra->prev->count; ++i) {
        ra_rehash_server(ra, &ra->prev->redis[i], ra->prev->hosts[i], ra->index, z_cb, z_cb_cache);
    }
}
