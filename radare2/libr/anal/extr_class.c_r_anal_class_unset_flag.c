
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int f; int (* unset_name ) (int ,char const*) ;} ;
struct TYPE_5__ {TYPE_1__ flb; scalar_t__ (* flg_class_get ) (int ,char const*) ;} ;
typedef TYPE_2__ RAnal ;


 scalar_t__ stub1 (int ,char const*) ;
 int stub2 (int ,char const*) ;

__attribute__((used)) static void r_anal_class_unset_flag(RAnal *anal, const char *name) {
 if (!name || !anal->flb.unset_name || !anal->flg_class_get) {
  return;
 }
 if (anal->flg_class_get (anal->flb.f, name)) {
  anal->flb.unset_name (anal->flb.f, name);
 }
}
