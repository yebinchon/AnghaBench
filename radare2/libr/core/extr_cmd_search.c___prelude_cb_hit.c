
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_3__ {int config; } ;
typedef int RSearchKeyword ;
typedef TYPE_1__ RCore ;


 int R_ANAL_REF_TYPE_NULL ;
 int preludecnt ;
 int r_config_get_i (int ,char*) ;
 int r_core_anal_fcn (TYPE_1__*,int ,int,int ,int) ;

__attribute__((used)) static int __prelude_cb_hit(RSearchKeyword *kw, void *user, ut64 addr) {
 RCore *core = (RCore *) user;
 int depth = r_config_get_i (core->config, "anal.depth");

 r_core_anal_fcn (core, addr, -1, R_ANAL_REF_TYPE_NULL, depth);
 preludecnt++;
 return 1;
}
