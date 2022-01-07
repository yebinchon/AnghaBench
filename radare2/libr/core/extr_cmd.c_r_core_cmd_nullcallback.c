
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int cmdrepeat; TYPE_2__* cons; } ;
struct TYPE_6__ {TYPE_1__* context; } ;
struct TYPE_5__ {int breaked; } ;
typedef TYPE_3__ RCore ;


 int r_core_cmd_repeat (TYPE_3__*,int) ;

__attribute__((used)) static int r_core_cmd_nullcallback(void *data) {
 RCore *core = (RCore*) data;
 if (core->cons->context->breaked) {
  core->cons->context->breaked = 0;
  return 0;
 }
 if (!core->cmdrepeat) {
  return 0;
 }
 r_core_cmd_repeat (core, 1);
 return 1;
}
