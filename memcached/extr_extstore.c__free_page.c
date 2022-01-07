
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t bucket; int active; int closed; int free; size_t free_bucket; struct TYPE_9__* next; scalar_t__ written; scalar_t__ allocated; scalar_t__ bytes_used; scalar_t__ obj_count; scalar_t__ version; int id; } ;
typedef TYPE_2__ store_page ;
struct TYPE_8__ {int page_reclaims; int bytes_used; int objects_used; } ;
struct TYPE_10__ {int mutex; int page_free; TYPE_2__* page_freelist; TYPE_2__** free_page_buckets; TYPE_2__** page_buckets; TYPE_1__ stats; } ;
typedef TYPE_3__ store_engine ;


 int E_DEBUG (char*,int ) ;
 int STAT_L (TYPE_3__*) ;
 int STAT_UL (TYPE_3__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void _free_page(store_engine *e, store_page *p) {
    store_page *tmp = ((void*)0);
    store_page *prev = ((void*)0);
    E_DEBUG("EXTSTORE: freeing page %u\n", p->id);
    STAT_L(e);
    e->stats.objects_used -= p->obj_count;
    e->stats.bytes_used -= p->bytes_used;
    e->stats.page_reclaims++;
    STAT_UL(e);
    pthread_mutex_lock(&e->mutex);

    tmp = e->page_buckets[p->bucket];
    while (tmp) {
        if (tmp == p) {
            if (prev) {
                prev->next = tmp->next;
            } else {
                e->page_buckets[p->bucket] = tmp->next;
            }
            tmp->next = ((void*)0);
            break;
        }
        prev = tmp;
        tmp = tmp->next;
    }

    p->version = 0;
    p->obj_count = 0;
    p->bytes_used = 0;
    p->allocated = 0;
    p->written = 0;
    p->bucket = 0;
    p->active = 0;
    p->closed = 0;
    p->free = 1;


    if (p->free_bucket != 0) {
        p->next = e->free_page_buckets[p->free_bucket];
        e->free_page_buckets[p->free_bucket] = p;
    } else {
        p->next = e->page_freelist;
        e->page_freelist = p;
    }
    e->page_free++;
    pthread_mutex_unlock(&e->mutex);
}
