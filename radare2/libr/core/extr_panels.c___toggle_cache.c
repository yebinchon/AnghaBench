
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* view; TYPE_1__* model; } ;
struct TYPE_7__ {int refresh; } ;
struct TYPE_6__ {int cache; } ;
typedef TYPE_3__ RPanel ;
typedef int RCore ;


 int __set_cmd_str_cache (int *,TYPE_3__*,int *) ;

void __toggle_cache (RCore *core, RPanel *p) {
 p->model->cache = !p->model->cache;
 __set_cmd_str_cache (core, p, ((void*)0));
 p->view->refresh = 1;
}
