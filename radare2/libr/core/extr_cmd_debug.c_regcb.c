
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RList ;


 int r_list_add_sorted (int *,int *,int ) ;
 int regcmp ;
 int * ut64_new (int const) ;

__attribute__((used)) static bool regcb(void *u, const ut64 k, const void *v) {
 RList *sorted = (RList*) u;
 ut64 *n = ut64_new (k);
 r_list_add_sorted (sorted, n, regcmp);
 return 1;
}
