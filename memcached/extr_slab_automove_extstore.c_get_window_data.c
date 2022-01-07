
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct window_data {int dummy; } ;
struct TYPE_3__ {int window_size; int window_cur; struct window_data* window_data; } ;
typedef TYPE_1__ slab_automove ;



__attribute__((used)) static struct window_data *get_window_data(slab_automove *a, int class) {
    int w_offset = class * a->window_size;
    return &a->window_data[w_offset + (a->window_cur % a->window_size)];
}
