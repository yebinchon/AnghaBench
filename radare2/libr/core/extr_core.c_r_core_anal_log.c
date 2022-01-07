
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct r_anal_t {TYPE_1__* user; } ;
struct TYPE_3__ {scalar_t__ cfglog; } ;
typedef TYPE_1__ RCore ;


 int r_core_log_add (TYPE_1__*,char const*) ;

__attribute__((used)) static bool r_core_anal_log(struct r_anal_t *anal, const char *msg) {
 RCore *core = anal->user;
 if (core->cfglog) {
  r_core_log_add (core, msg);
 }
 return 1;
}
