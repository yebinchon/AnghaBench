
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct window_data {int dummy; } ;
struct settings {int slab_automove_window; double slab_automove_ratio; } ;
struct TYPE_3__ {int window_size; double max_age_ratio; int sam_before; int iam_before; int * window_data; } ;
typedef TYPE_1__ slab_automove ;


 int MAX_NUMBER_OF_SLAB_CLASSES ;
 void* calloc (int,int) ;
 int fill_item_stats_automove (int ) ;
 int fill_slab_stats_automove (int ) ;
 int free (TYPE_1__*) ;

void *slab_automove_init(struct settings *settings) {
    uint32_t window_size = settings->slab_automove_window;
    double max_age_ratio = settings->slab_automove_ratio;
    slab_automove *a = calloc(1, sizeof(slab_automove));
    if (a == ((void*)0))
        return ((void*)0);
    a->window_data = calloc(window_size * MAX_NUMBER_OF_SLAB_CLASSES, sizeof(struct window_data));
    a->window_size = window_size;
    a->max_age_ratio = max_age_ratio;
    if (a->window_data == ((void*)0)) {
        free(a);
        return ((void*)0);
    }


    fill_item_stats_automove(a->iam_before);
    fill_slab_stats_automove(a->sam_before);

    return (void *)a;
}
