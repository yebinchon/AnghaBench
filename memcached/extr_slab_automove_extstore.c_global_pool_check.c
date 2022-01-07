
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct window_global {int pool_low; int pool_high; } ;
struct TYPE_3__ {int* free_mem; size_t window_cur; size_t window_size; int pool_filled_once; struct window_global* window_global; } ;
typedef TYPE_1__ slab_automove ;


 unsigned int global_page_pool_size (int*) ;
 int memset (struct window_global*,int ,int) ;

__attribute__((used)) static void global_pool_check(slab_automove *a) {
    bool mem_limit_reached;
    uint32_t free = a->free_mem[0];
    struct window_global *wg = &a->window_global[a->window_cur % a->window_size];
    unsigned int count = global_page_pool_size(&mem_limit_reached);
    memset(wg, 0, sizeof(struct window_global));
    if (!mem_limit_reached)
        return;
    if (count < free / 2) {
        wg->pool_low = 1;
        a->pool_filled_once = 1;
    } else if (count > free) {
        wg->pool_high = 1;
    } else {
        a->pool_filled_once = 1;
    }
}
