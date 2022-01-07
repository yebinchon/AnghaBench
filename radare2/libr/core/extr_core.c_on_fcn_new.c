
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_7__ {int addr; } ;
struct TYPE_6__ {int offset; int config; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RAnalFunction ;
typedef int RAnal ;


 char* r_config_get (int ,char*) ;
 int r_core_cmd0 (TYPE_1__*,char const*) ;
 int r_core_seek (TYPE_1__*,int ,int) ;

__attribute__((used)) static int on_fcn_new(RAnal *_anal, void* _user, RAnalFunction *fcn) {
 RCore *core = (RCore*)_user;
 const char *cmd = r_config_get (core->config, "cmd.fcn.new");
 if (cmd && *cmd) {
  ut64 oaddr = core->offset;
  ut64 addr = fcn->addr;
  r_core_seek (core, addr, 1);
  r_core_cmd0 (core, cmd);
  r_core_seek (core, oaddr, 1);
 }
 return 0;
}
