
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* panels; } ;
struct TYPE_5__ {TYPE_1__* can; } ;
struct TYPE_4__ {int color; } ;
typedef TYPE_3__ RCore ;


 int r_cons_2048 (int ) ;

int __game_cb(void *user) {
 RCore *core = (RCore *)user;
 r_cons_2048 (core->panels->can->color);
 return 0;
}
