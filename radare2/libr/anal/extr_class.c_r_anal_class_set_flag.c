
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_4__ {int f; } ;
struct TYPE_5__ {TYPE_1__ flb; int (* flg_class_set ) (int ,char const*,int ,int ) ;} ;
typedef TYPE_2__ RAnal ;


 int stub1 (int ,char const*,int ,int ) ;

__attribute__((used)) static void r_anal_class_set_flag(RAnal *anal, const char *name, ut64 addr) {
 if (!name || !anal->flg_class_set) {
  return;
 }
 anal->flg_class_set (anal->flb.f, name, addr, 0);
}
