
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_bool ;


 int ra_move_collection (char const*,int,int *,int *,int,char const**,int,char const**,long) ;

__attribute__((used)) static zend_bool
ra_move_list(const char *key, int key_len, zval *z_from, zval *z_to, long ttl) {

    const char *cmd_list[] = {"LRANGE", "0", "-1"};
    const char *cmd_add[] = {"RPUSH"};
    return ra_move_collection(key, key_len, z_from, z_to, 3, cmd_list, 1, cmd_add, ttl);
}
