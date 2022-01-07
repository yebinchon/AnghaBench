
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* anal; } ;
struct TYPE_4__ {int fcns; } ;
typedef TYPE_2__ RCore ;


 int r_list_length (int ) ;

__attribute__((used)) static int count_functions(RCore *core) {
 return r_list_length (core->anal->fcns);
}
