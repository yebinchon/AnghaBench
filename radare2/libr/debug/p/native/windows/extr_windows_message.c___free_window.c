
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* name; } ;
typedef TYPE_1__ window ;


 int free (TYPE_1__*) ;

void __free_window (void *ptr) {
 window *win = ptr;
 free (win->name);
 free (win);
}
