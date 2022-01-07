
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int smart_string ;
struct TYPE_3__ {scalar_t__ sort; scalar_t__ store; int * key; scalar_t__ count; scalar_t__ withhash; scalar_t__ withdist; scalar_t__ withcoord; } ;
typedef TYPE_1__ geoOptions ;
typedef int RedisSock ;


 int CMD_SET_SLOT (short*,char*,size_t) ;
 int REDIS_CMD_APPEND_SSTR_STATIC (int *,char*) ;
 scalar_t__ SORT_ASC ;
 scalar_t__ SORT_DESC ;
 scalar_t__ STORE_COORD ;
 scalar_t__ STORE_NONE ;
 size_t ZSTR_LEN (int *) ;
 char* ZSTR_VAL (int *) ;
 int free (char*) ;
 int redis_cmd_append_sstr (int *,char*,size_t) ;
 int redis_cmd_append_sstr_long (int *,scalar_t__) ;
 int redis_key_prefix (int *,char**,size_t*) ;

void append_georadius_opts(RedisSock *redis_sock, smart_string *str, short *slot,
                           geoOptions *opt)
{
    char *key;
    size_t keylen;
    int keyfree;

    if (opt->withcoord)
        REDIS_CMD_APPEND_SSTR_STATIC(str, "WITHCOORD");
    if (opt->withdist)
        REDIS_CMD_APPEND_SSTR_STATIC(str, "WITHDIST");
    if (opt->withhash)
        REDIS_CMD_APPEND_SSTR_STATIC(str, "WITHHASH");


    if (opt->sort == SORT_ASC) {
        REDIS_CMD_APPEND_SSTR_STATIC(str, "ASC");
    } else if (opt->sort == SORT_DESC) {
        REDIS_CMD_APPEND_SSTR_STATIC(str, "DESC");
    }


    if (opt->count) {
        REDIS_CMD_APPEND_SSTR_STATIC(str, "COUNT");
        redis_cmd_append_sstr_long(str, opt->count);
    }


    if (opt->store != STORE_NONE && opt->key != ((void*)0)) {

        key = ZSTR_VAL(opt->key);
        keylen = ZSTR_LEN(opt->key);
        keyfree = redis_key_prefix(redis_sock, &key, &keylen);

        if (opt->store == STORE_COORD) {
            REDIS_CMD_APPEND_SSTR_STATIC(str, "STORE");
        } else {
            REDIS_CMD_APPEND_SSTR_STATIC(str, "STOREDIST");
        }

        redis_cmd_append_sstr(str, key, keylen);

        CMD_SET_SLOT(slot, key, keylen);
        if (keyfree) free(key);
    }
}
