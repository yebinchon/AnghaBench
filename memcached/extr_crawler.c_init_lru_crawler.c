
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * c; } ;
struct TYPE_4__ {int * data; int * mod; TYPE_1__ c; } ;


 TYPE_2__ active_crawler_mod ;
 int lru_crawler_initialized ;
 void* storage ;

int init_lru_crawler(void *arg) {
    if (lru_crawler_initialized == 0) {



        active_crawler_mod.c.c = ((void*)0);
        active_crawler_mod.mod = ((void*)0);
        active_crawler_mod.data = ((void*)0);
        lru_crawler_initialized = 1;
    }
    return 0;
}
