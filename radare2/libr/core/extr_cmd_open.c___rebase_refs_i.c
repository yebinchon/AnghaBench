
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut64 ;
struct __rebase_struct {TYPE_1__* core; scalar_t__ type; scalar_t__ diff; } ;
struct TYPE_4__ {int type; int addr; int at; } ;
struct TYPE_3__ {int anal; } ;
typedef TYPE_2__ RAnalRef ;


 int r_anal_xrefs_set (int ,int ,int ,int ) ;

__attribute__((used)) static bool __rebase_refs_i(void *user, const ut64 k, const void *v) {
 struct __rebase_struct *reb = (void*)user;
 RAnalRef *ref = (RAnalRef *)v;
 ref->addr += reb->diff;
 ref->at += reb->diff;
 if (reb->type) {
  r_anal_xrefs_set (reb->core->anal, ref->addr, ref->at, ref->type);
 } else {
  r_anal_xrefs_set (reb->core->anal, ref->at, ref->addr, ref->type);
 }
 return 1;
}
