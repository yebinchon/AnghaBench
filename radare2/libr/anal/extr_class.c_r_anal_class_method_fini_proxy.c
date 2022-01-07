
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalMethod ;


 int r_anal_class_method_fini (int *) ;

__attribute__((used)) static void r_anal_class_method_fini_proxy(void *e, void *user) {
 (void)user;
 RAnalMethod *meth = e;
 r_anal_class_method_fini (meth);
}
