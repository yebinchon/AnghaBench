
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int ra_index_change_keys (char*,int *,int *) ;

void
ra_index_del(zval *z_keys, zval *z_redis) {
    ra_index_change_keys("SREM", z_keys, z_redis);
}
