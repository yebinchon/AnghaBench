
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* member_1; char const* member_2; int * member_0; } ;
typedef TYPE_1__ RenameClassCtx ;
typedef int RAnal ;


 int r_anal_class_base_rename_class_cb ;
 int r_anal_class_foreach (int *,int ,TYPE_1__*) ;

__attribute__((used)) static void r_anal_class_base_rename_class(RAnal *anal, const char *class_name_old, const char *class_name_new) {
 RenameClassCtx ctx = { anal, class_name_old, class_name_new };
 r_anal_class_foreach (anal, r_anal_class_base_rename_class_cb, &ctx);
}
