
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* anal; } ;
struct TYPE_5__ {int sdb_types; } ;
typedef TYPE_2__ RCore ;


 int print_keys (int ,TYPE_2__*,int *,int ,int) ;
 int print_typelist_json_cb ;
 int print_typelist_r_cb ;
 int printkey_cb ;
 int * stdiftype ;

__attribute__((used)) static void typesList(RCore *core, int mode) {
 switch (mode) {
 case 1:
 case '*':
  print_keys (core->anal->sdb_types, core, ((void*)0), print_typelist_r_cb, 0);
  break;
 case 'j':
  print_keys (core->anal->sdb_types, core, stdiftype, print_typelist_json_cb, 1);
  break;
 default:
  print_keys (core->anal->sdb_types, core, stdiftype, printkey_cb, 0);
  break;
 }
}
