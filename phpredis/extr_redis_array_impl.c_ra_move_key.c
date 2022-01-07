
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef scalar_t__ zend_bool ;


 int MULTI ;





 int ra_del_key (char const*,int,int *) ;
 scalar_t__ ra_get_key_type (int *,char const*,int,int *,long*) ;
 int ra_index_exec (int *,int *,int ) ;
 int ra_index_key (char const*,int,int *) ;
 int ra_index_multi (int *,int ) ;
 scalar_t__ ra_move_hash (char const*,int,int *,int *,long) ;
 scalar_t__ ra_move_list (char const*,int,int *,int *,long) ;
 scalar_t__ ra_move_set (char const*,int,int *,int *,long) ;
 scalar_t__ ra_move_string (char const*,int,int *,int *,long) ;
 scalar_t__ ra_move_zset (char const*,int,int *,int *,long) ;

void
ra_move_key(const char *key, int key_len, zval *z_from, zval *z_to) {

    long res[2] = {0}, type, ttl;
    zend_bool success = 0;
    if (ra_get_key_type(z_from, key, key_len, z_from, res)) {
        type = res[0];
        ttl = res[1];

        ra_index_multi(z_to, MULTI);
        switch(type) {
            case 129:
                success = ra_move_string(key, key_len, z_from, z_to, ttl);
                break;

            case 130:
                success = ra_move_set(key, key_len, z_from, z_to, ttl);
                break;

            case 131:
                success = ra_move_list(key, key_len, z_from, z_to, ttl);
                break;

            case 128:
                success = ra_move_zset(key, key_len, z_from, z_to, ttl);
                break;

            case 132:
                success = ra_move_hash(key, key_len, z_from, z_to, ttl);
                break;

            default:

                break;
        }
    }

    if(success) {
        ra_del_key(key, key_len, z_from);
        ra_index_key(key, key_len, z_to);
    }


    ra_index_exec(z_to, ((void*)0), 0);
}
