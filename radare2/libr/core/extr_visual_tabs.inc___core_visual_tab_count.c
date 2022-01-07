
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tabs; } ;
struct TYPE_5__ {TYPE_1__ visual; } ;
typedef TYPE_2__ RCore ;


 int r_list_length (scalar_t__) ;

__attribute__((used)) static int __core_visual_tab_count (RCore *core) {
 return core->visual.tabs? r_list_length (core->visual.tabs): 0;
}
