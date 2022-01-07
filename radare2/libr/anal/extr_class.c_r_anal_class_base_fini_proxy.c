
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAnalBaseClass ;


 int r_anal_class_base_fini (int *) ;

__attribute__((used)) static void r_anal_class_base_fini_proxy(void *e, void *user) {
 (void)user;
 RAnalBaseClass *base = e;
 r_anal_class_base_fini (base);
}
