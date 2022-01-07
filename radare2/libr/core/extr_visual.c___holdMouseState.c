
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mouse; } ;
typedef int RCore ;


 int r_cons_enable_mouse (int) ;
 TYPE_1__* r_cons_singleton () ;

__attribute__((used)) static bool __holdMouseState(RCore *core) {
 bool m = r_cons_singleton ()->mouse;
 r_cons_enable_mouse (0);
 return m;
}
