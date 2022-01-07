
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__** master; } ;
typedef TYPE_3__ redisCluster ;
struct TYPE_6__ {TYPE_1__* sock; } ;
struct TYPE_5__ {unsigned short port; int host; } ;


 int REDIS_CLUSTER_SLOTS ;
 int ZSTR_VAL (int ) ;
 int strcasecmp (int ,char const*) ;

short cluster_find_slot(redisCluster *c, const char *host,
                               unsigned short port)
{
    int i;

    for (i = 0; i < REDIS_CLUSTER_SLOTS; i++) {
        if (c->master[i] && c->master[i]->sock &&
           c->master[i]->sock->port == port &&
           !strcasecmp(ZSTR_VAL(c->master[i]->sock->host), host))
        {
            return i;
        }
    }


    return -1;
}
