
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ifirst; int ilast; int * head; scalar_t__ count; } ;


 TYPE_1__ g_pending ;

void matrix_init_user(void) {
    g_pending.ifirst = -1;
    g_pending.ilast = -1;
    g_pending.count = 0;
    g_pending.head = ((void*)0);
}
