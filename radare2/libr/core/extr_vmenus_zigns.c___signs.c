
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_5__ {int anal; } ;
struct TYPE_4__ {TYPE_2__* core; } ;
typedef int RList ;
typedef TYPE_1__ RCoreVisualViewZigns ;
typedef TYPE_2__ RCore ;


 int * r_sign_get_list (int ) ;

__attribute__((used)) static RList *__signs(RCoreVisualViewZigns *status, ut64 addr, bool update) {
 RCore *core = status->core;
 return r_sign_get_list (core->anal);
}
