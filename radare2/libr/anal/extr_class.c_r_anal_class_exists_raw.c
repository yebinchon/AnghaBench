
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sdb_classes; } ;
typedef TYPE_1__ RAnal ;


 int key_class (char const*) ;
 int sdb_exists (int ,int ) ;

__attribute__((used)) static bool r_anal_class_exists_raw(RAnal *anal, const char *name) {
 return sdb_exists (anal->sdb_classes, key_class (name));
}
