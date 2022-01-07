
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int count; int * redis; int * hosts; } ;
typedef TYPE_1__ RedisArray ;


 int ZSTR_LEN (int ) ;
 int ZSTR_VAL (int ) ;
 scalar_t__ strcmp (int ,char const*) ;

zval *
ra_find_node_by_name(RedisArray *ra, const char *host, int host_len) {

    int i;
    for(i = 0; i < ra->count; ++i) {
        if (ZSTR_LEN(ra->hosts[i]) == host_len && strcmp(ZSTR_VAL(ra->hosts[i]), host) == 0) {
            return &ra->redis[i];
        }
    }
    return ((void*)0);
}
