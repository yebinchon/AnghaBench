
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int key ;
typedef int ancillary_reg_entry ;
struct TYPE_3__ {int member_0; int member_1; } ;
typedef TYPE_1__ anc_reg_key ;
struct TYPE_4__ {int ht; int initialized; } ;


 int ancillary_mutex ;
 TYPE_2__ ancillary_registry ;
 int init_ancillary_registry () ;
 int tsrm_mutex_lock (int ) ;
 int tsrm_mutex_unlock (int ) ;
 int * zend_hash_str_find_ptr (int *,char*,int) ;

ancillary_reg_entry *get_ancillary_reg_entry(int cmsg_level, int msg_type)
{
 anc_reg_key key = { cmsg_level, msg_type };
 ancillary_reg_entry *entry;




 if (!ancillary_registry.initialized) {
  init_ancillary_registry();
 }




 if ((entry = zend_hash_str_find_ptr(&ancillary_registry.ht, (char*)&key, sizeof(key))) != ((void*)0)) {
  return entry;
 } else {
  return ((void*)0);
 }
}
