
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clusterdown; int * err; } ;
typedef TYPE_1__ redisCluster ;


 int memcmp (char*,char*,int) ;
 int * zend_string_init (char*,int,int ) ;
 int zend_string_release (int *) ;

__attribute__((used)) static void
cluster_set_err(redisCluster *c, char *err, int err_len)
{

    if (c->err != ((void*)0)) {
        zend_string_release(c->err);
        c->err = ((void*)0);
    }
    if (err != ((void*)0) && err_len > 0) {
        c->err = zend_string_init(err, err_len, 0);
        if (err_len >= sizeof("CLUSTERDOWN") - 1 &&
            !memcmp(err, "CLUSTERDOWN", sizeof("CLUSTERDOWN") - 1)
        ) {
            c->clusterdown = 1;
        }
    }
}
