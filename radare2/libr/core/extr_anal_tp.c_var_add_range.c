
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
typedef int _RAnalCond ;
struct TYPE_3__ {int delta; int kind; int addr; } ;
typedef TYPE_1__ RAnalVar ;
typedef int RAnal ;


 int ADB ;
 char* RKEY (int ,int ,int ) ;
 int sdb_array_append_num (int ,char const*,int ,int ) ;

__attribute__((used)) static void var_add_range (RAnal *a, RAnalVar *var, _RAnalCond cond, ut64 val) {
 const char *key = RKEY (var->addr, var->kind, var->delta);
 sdb_array_append_num (ADB, key, cond, 0);
 sdb_array_append_num (ADB, key, val, 0);
}
