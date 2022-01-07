
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t size; size_t offset; char* buffer; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;
typedef TYPE_2__ conn ;
struct TYPE_7__ {int malloc_fails; } ;


 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 int assert (int) ;
 char* realloc (char*,size_t) ;
 TYPE_3__ stats ;

__attribute__((used)) static bool grow_stats_buf(conn *c, size_t needed) {
    size_t nsize = c->stats.size;
    size_t available = nsize - c->stats.offset;
    bool rv = 1;


    if (c->stats.buffer == ((void*)0)) {
        nsize = 1024;
        available = c->stats.size = c->stats.offset = 0;
    }

    while (needed > available) {
        assert(nsize > 0);
        nsize = nsize << 1;
        available = nsize - c->stats.offset;
    }

    if (nsize != c->stats.size) {
        char *ptr = realloc(c->stats.buffer, nsize);
        if (ptr) {
            c->stats.buffer = ptr;
            c->stats.size = nsize;
        } else {
            STATS_LOCK();
            stats.malloc_fails++;
            STATS_UNLOCK();
            rv = 0;
        }
    }

    return rv;
}
