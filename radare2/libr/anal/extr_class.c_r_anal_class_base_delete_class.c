
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* member_1; int * member_0; } ;
typedef int RAnal ;
typedef TYPE_1__ DeleteClassCtx ;


 int r_anal_class_base_delete_class_cb ;
 int r_anal_class_foreach (int *,int ,TYPE_1__*) ;

__attribute__((used)) static void r_anal_class_base_delete_class(RAnal *anal, const char *class_name) {
 DeleteClassCtx ctx = { anal, class_name };
 r_anal_class_foreach (anal, r_anal_class_base_delete_class_cb, &ctx);
}
