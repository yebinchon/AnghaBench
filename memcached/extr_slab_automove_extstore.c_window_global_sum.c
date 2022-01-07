
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct window_global {scalar_t__ pool_low; scalar_t__ pool_high; } ;



__attribute__((used)) static void window_global_sum(struct window_global *wg,
        struct window_global *w, uint32_t size) {
    for (int x = 0; x < size; x++) {
        struct window_global *d = &wg[x];
        w->pool_high += d->pool_high;
        w->pool_low += d->pool_low;
    }
}
