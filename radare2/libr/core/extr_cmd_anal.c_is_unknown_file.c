
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* bin; } ;
struct TYPE_8__ {TYPE_2__* cur; } ;
struct TYPE_7__ {TYPE_1__* o; } ;
struct TYPE_6__ {int sections; } ;
typedef TYPE_4__ RCore ;


 int r_list_empty (int ) ;

__attribute__((used)) static bool is_unknown_file(RCore *core) {
 if (core->bin->cur && core->bin->cur->o) {
  return (r_list_empty (core->bin->cur->o->sections));
 }
 return 1;
}
