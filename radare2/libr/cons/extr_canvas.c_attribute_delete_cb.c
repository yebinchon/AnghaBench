
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int HtUP ;


 int ht_up_delete (int *,int const) ;

__attribute__((used)) static bool attribute_delete_cb(void *user, const ut64 key, const void *value) {
 HtUP *ht = (HtUP *)user;
 ht_up_delete (ht, key);
 return 1;
}
