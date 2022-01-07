
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct window_data {int evicted; int dirty; scalar_t__ age; } ;
typedef int slab_stats_automove ;
struct TYPE_6__ {int window_cur; int window_size; double max_age_ratio; TYPE_3__* sam_after; TYPE_2__* sam_before; TYPE_3__* iam_after; TYPE_2__* iam_before; struct window_data* window_data; } ;
typedef TYPE_1__ slab_automove ;
typedef int item_stats_automove ;
struct TYPE_8__ {scalar_t__ evicted; scalar_t__ outofmemory; scalar_t__ total_pages; scalar_t__ age; int free_chunks; int chunks_per_page; } ;
struct TYPE_7__ {scalar_t__ evicted; scalar_t__ outofmemory; scalar_t__ total_pages; } ;


 int MAX_NUMBER_OF_SLAB_CLASSES ;
 int MIN_PAGES_FOR_RECLAIM ;
 scalar_t__ MIN_PAGES_FOR_SOURCE ;
 int POWER_SMALLEST ;
 int fill_item_stats_automove (TYPE_3__*) ;
 int fill_slab_stats_automove (TYPE_3__*) ;
 int memcpy (TYPE_2__*,TYPE_3__*,int) ;
 int memset (struct window_data*,int ,int) ;
 int window_sum (struct window_data*,struct window_data*,int) ;

void slab_automove_run(void *arg, int *src, int *dst) {
    slab_automove *a = (slab_automove *)arg;
    int n;
    struct window_data w_sum;
    int oldest = -1;
    uint64_t oldest_age = 0;
    int youngest = -1;
    uint64_t youngest_age = ~0;
    bool youngest_evicting = 0;
    *src = -1;
    *dst = -1;


    fill_item_stats_automove(a->iam_after);
    fill_slab_stats_automove(a->sam_after);
    a->window_cur++;


    for (n = POWER_SMALLEST; n < MAX_NUMBER_OF_SLAB_CLASSES; n++) {
        int w_offset = n * a->window_size;
        struct window_data *wd = &a->window_data[w_offset + (a->window_cur % a->window_size)];
        memset(wd, 0, sizeof(struct window_data));

        memset(&w_sum, 0, sizeof(struct window_data));
        window_sum(&a->window_data[w_offset], &w_sum, a->window_size);



        if (a->iam_after[n].evicted - a->iam_before[n].evicted > 0 ||
            a->iam_after[n].outofmemory - a->iam_before[n].outofmemory > 0) {
            wd->evicted = 1;
            wd->dirty = 1;
        }
        if (a->sam_after[n].total_pages - a->sam_before[n].total_pages > 0) {
            wd->dirty = 1;
        }


        wd->age = a->iam_after[n].age;


        uint64_t age = w_sum.age / a->window_size;


        if (a->sam_after[n].free_chunks > a->sam_after[n].chunks_per_page * MIN_PAGES_FOR_RECLAIM) {
            if (w_sum.dirty == 0) {
                *src = n;
                *dst = 0;
                break;
            }
        }


        if (age > oldest_age && a->sam_after[n].total_pages > MIN_PAGES_FOR_SOURCE) {
            oldest = n;
            oldest_age = age;
        }



        if (age < youngest_age && w_sum.evicted > a->window_size / 2) {
            youngest = n;
            youngest_age = age;
            youngest_evicting = wd->evicted ? 1 : 0;
        }
    }

    memcpy(a->iam_before, a->iam_after,
            sizeof(item_stats_automove) * MAX_NUMBER_OF_SLAB_CLASSES);
    memcpy(a->sam_before, a->sam_after,
            sizeof(slab_stats_automove) * MAX_NUMBER_OF_SLAB_CLASSES);


    if (youngest != -1 && oldest != -1 && a->window_cur > a->window_size) {
        if (youngest_age < ((double)oldest_age * a->max_age_ratio) && youngest_evicting) {
            *src = oldest;
            *dst = youngest;
        }
    }
    return;
}
