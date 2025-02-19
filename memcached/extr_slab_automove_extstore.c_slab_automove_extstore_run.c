
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct window_global {int evicted; int dirty; int excess_free; scalar_t__ age; int relaxed; scalar_t__ pool_high; scalar_t__ pool_low; } ;
struct window_data {int evicted; int dirty; int excess_free; scalar_t__ age; int relaxed; scalar_t__ pool_high; scalar_t__ pool_low; } ;
typedef int slab_stats_automove ;
struct TYPE_9__ {int window_size; scalar_t__ window_cur; scalar_t__ item_size; int* free_mem; double max_age_ratio; TYPE_3__* sam_after; TYPE_2__* sam_before; TYPE_3__* iam_after; TYPE_2__* iam_before; int * window_data; int window_global; } ;
typedef TYPE_1__ slab_automove ;
typedef int item_stats_automove ;
struct TYPE_11__ {scalar_t__ evicted; scalar_t__ outofmemory; scalar_t__ total_pages; int free_chunks; scalar_t__ age; int chunks_per_page; } ;
struct TYPE_10__ {scalar_t__ chunk_size; scalar_t__ evicted; scalar_t__ outofmemory; scalar_t__ total_pages; } ;


 int MAX_NUMBER_OF_SLAB_CLASSES ;
 int MIN_PAGES_FOR_RECLAIM ;
 scalar_t__ MIN_PAGES_FOR_SOURCE ;
 int POWER_SMALLEST ;
 int fill_item_stats_automove (TYPE_3__*) ;
 int fill_slab_stats_automove (TYPE_3__*) ;
 struct window_global* get_window_data (TYPE_1__*,int) ;
 int global_pool_check (TYPE_1__*) ;
 int memcheck (TYPE_1__*) ;
 int memcpy (TYPE_2__*,TYPE_3__*,int) ;
 int memset (struct window_global*,int ,int) ;
 int window_global_sum (int ,struct window_global*,int) ;
 int window_sum (int *,struct window_global*,int) ;

void slab_automove_extstore_run(void *arg, int *src, int *dst) {
    slab_automove *a = (slab_automove *)arg;
    int n;
    struct window_data w_sum;
    int oldest = -1;
    uint64_t oldest_age = 0;
    int youngest = -1;
    uint64_t youngest_age = ~0;
    bool too_free = 0;
    *src = -1;
    *dst = -1;

    global_pool_check(a);
    struct window_global wg_sum;
    memset(&wg_sum, 0, sizeof(struct window_global));
    window_global_sum(a->window_global, &wg_sum, a->window_size);

    fill_item_stats_automove(a->iam_after);
    fill_slab_stats_automove(a->sam_after);
    a->window_cur++;

    memcheck(a);


    for (n = POWER_SMALLEST; n < MAX_NUMBER_OF_SLAB_CLASSES; n++) {
        bool small_slab = a->sam_before[n].chunk_size < a->item_size
            ? 1 : 0;
        bool free_enough = 0;
        struct window_data *wd = get_window_data(a, n);

        memset(&w_sum, 0, sizeof(struct window_data));
        int w_offset = n * a->window_size;
        window_sum(&a->window_data[w_offset], &w_sum, a->window_size);
        memset(wd, 0, sizeof(struct window_data));



        if (a->iam_after[n].evicted - a->iam_before[n].evicted > 0 ||
            a->iam_after[n].outofmemory - a->iam_before[n].outofmemory > 0) {
            wd->evicted = 1;
            wd->dirty = 1;
        }
        if (a->sam_after[n].total_pages - a->sam_before[n].total_pages > 0) {
            wd->dirty = 1;
        }



        if (a->sam_after[n].free_chunks > a->free_mem[n]) {
            free_enough = 1;
        }


        if (a->sam_after[n].free_chunks > (a->free_mem[n] * 2) && a->free_mem[n] > 0) {
            wd->excess_free = 1;
        }


        wd->age = a->iam_after[n].age;


        uint64_t age = w_sum.age / a->window_size;




        if (a->sam_after[n].free_chunks > a->sam_after[n].chunks_per_page * MIN_PAGES_FOR_RECLAIM
                && w_sum.dirty == 0) {
            if (small_slab) {
                *src = n;
                *dst = 0;
                too_free = 1;
            } else if (!small_slab && w_sum.excess_free >= a->window_size) {


                *src = n;
                *dst = 0;
                too_free = 1;
            }
        }

        if (!small_slab) {

            if (age > oldest_age
                    && a->sam_after[n].total_pages > MIN_PAGES_FOR_SOURCE) {
                oldest = n;
                oldest_age = age;
            }



            if (age < youngest_age && a->sam_after[n].total_pages != 0
                    && w_sum.excess_free < a->window_size
                    && !(w_sum.relaxed && free_enough)) {
                youngest = n;
                youngest_age = age;
            }
        }
    }

    memcpy(a->iam_before, a->iam_after,
            sizeof(item_stats_automove) * MAX_NUMBER_OF_SLAB_CLASSES);
    memcpy(a->sam_before, a->sam_after,
            sizeof(slab_stats_automove) * MAX_NUMBER_OF_SLAB_CLASSES);

    if (a->window_cur < a->window_size)
        return;

    if (wg_sum.pool_high >= a->window_size && !wg_sum.pool_low && youngest != -1) {
        if (a->sam_after[youngest].free_chunks <= a->free_mem[youngest]) {
            *src = 0;
            *dst = youngest;
        }
        struct window_data *wd = get_window_data(a, youngest);



        wd->relaxed = 1;
    } else if (!too_free && wg_sum.pool_low && oldest != -1) {
        *src = oldest;
        *dst = 0;
    } else if (!too_free && youngest != -1 && oldest != -1 && youngest != oldest) {

        if (youngest_age < ((double)oldest_age * a->max_age_ratio)) {
            struct window_data *wd = get_window_data(a, youngest);
            wd->relaxed = 1;

            if (a->sam_after[youngest].free_chunks <= a->free_mem[youngest]) {
                *src = 0;
                *dst = youngest;

            }
        }
    }
    return;
}
