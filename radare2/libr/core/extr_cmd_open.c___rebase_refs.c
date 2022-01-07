
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int HtUP ;


 int __rebase_refs_i ;
 int ht_up_foreach (int *,int ,void*) ;

__attribute__((used)) static bool __rebase_refs(void *user, const ut64 k, const void *v) {
 HtUP *ht = (HtUP *)v;
 ht_up_foreach (ht, __rebase_refs_i, user);
 return 1;

}
