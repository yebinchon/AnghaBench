
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_7__ {int f; int (* unset ) (int ,TYPE_2__*) ;} ;
struct TYPE_9__ {TYPE_1__ flb; int (* flg_class_set ) (int ,char const*,int ,int ) ;TYPE_2__* (* flg_class_get ) (int ,char const*) ;} ;
struct TYPE_8__ {int offset; } ;
typedef TYPE_2__ RFlagItem ;
typedef TYPE_3__ RAnal ;


 TYPE_2__* stub1 (int ,char const*) ;
 int stub2 (int ,TYPE_2__*) ;
 int stub3 (int ,char const*,int ,int ) ;

__attribute__((used)) static void r_anal_class_rename_flag(RAnal *anal, const char *old_name, const char *new_name) {
 if (!old_name || !new_name || !anal->flb.unset || !anal->flg_class_get || !anal->flg_class_set) {
  return;
 }
 RFlagItem *flag = anal->flg_class_get (anal->flb.f, old_name);
 if (!flag) {
  return;
 }
 ut64 addr = flag->offset;
 anal->flb.unset (anal->flb.f, flag);
 anal->flg_class_set (anal->flb.f, new_name, addr, 0);
}
