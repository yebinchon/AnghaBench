
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ redisCluster ;


 int E_WARNING ;
 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_DOUBLE ;
 scalar_t__ IS_LONG ;
 scalar_t__ IS_STRING ;
 size_t ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int Z_ARRVAL_P (int *) ;
 scalar_t__ Z_LVAL_P (int *) ;
 scalar_t__ Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 short cluster_find_slot (TYPE_1__*,char const*,unsigned short) ;
 short cluster_hash_key (char*,size_t) ;
 int efree (char*) ;
 int php_error_docref (int ,int ,char*,...) ;
 int redis_key_prefix (int ,char**,size_t*) ;
 int * zend_hash_index_find (int ,int) ;
 int zend_string_release (int *) ;
 int * zval_get_string (int *) ;

__attribute__((used)) static short
cluster_cmd_get_slot(redisCluster *c, zval *z_arg)
{
    size_t key_len;
    int key_free;
    zval *z_host, *z_port;
    short slot;
    char *key;
    zend_string *zstr;



    if (Z_TYPE_P(z_arg) ==IS_STRING || Z_TYPE_P(z_arg) ==IS_LONG ||
       Z_TYPE_P(z_arg) ==IS_DOUBLE)
    {

        zstr = zval_get_string(z_arg);
        key = ZSTR_VAL(zstr);
        key_len = ZSTR_LEN(zstr);


        key_free = redis_key_prefix(c->flags, &key, &key_len);
        slot = cluster_hash_key(key, key_len);
        zend_string_release(zstr);
        if (key_free) efree(key);
    } else if (Z_TYPE_P(z_arg) == IS_ARRAY &&
        (z_host = zend_hash_index_find(Z_ARRVAL_P(z_arg), 0)) != ((void*)0) &&
        (z_port = zend_hash_index_find(Z_ARRVAL_P(z_arg), 1)) != ((void*)0) &&
        Z_TYPE_P(z_host) == IS_STRING && Z_TYPE_P(z_port) == IS_LONG
    ) {

        slot = cluster_find_slot(c,(const char *)Z_STRVAL_P(z_host),
            (unsigned short)Z_LVAL_P(z_port));


        if (slot < 0) {
            php_error_docref(0, E_WARNING, "Unknown node %s:%ld",
                Z_STRVAL_P(z_host), Z_LVAL_P(z_port));
        }
    } else {
        php_error_docref(0, E_WARNING,
            "Direted commands musty be passed a key or [host,port] array");
        return -1;
    }

    return slot;
}
