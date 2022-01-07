
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* window_global; struct TYPE_3__* window_data; } ;
typedef TYPE_1__ slab_automove ;


 int free (TYPE_1__*) ;

void slab_automove_extstore_free(void *arg) {
    slab_automove *a = (slab_automove *)arg;
    free(a->window_data);
    free(a->window_global);
    free(a);
}
