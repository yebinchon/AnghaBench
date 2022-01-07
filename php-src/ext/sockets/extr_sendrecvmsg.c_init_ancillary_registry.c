
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int dummy; } ;
struct in6_pktinfo {int dummy; } ;
typedef int ancillary_reg_entry ;
typedef int anc_reg_key ;
struct TYPE_2__ {int initialized; int ht; } ;


 int IPPROTO_IPV6 ;
 int IPV6_HOPLIMIT ;
 int IPV6_PKTINFO ;
 int IPV6_TCLASS ;
 int PUT_ENTRY (int,int,int ,int ,int ,int ,int ) ;
 int SCM_CREDENTIALS ;
 int SCM_RIGHTS ;
 int SOL_SOCKET ;
 int ancillary_registery_free_elem ;
 TYPE_1__ ancillary_registry ;
 int calculate_scm_rights_space ;
 int from_zval_write_fd_array ;
 int from_zval_write_in6_pktinfo ;
 int from_zval_write_int ;
 int from_zval_write_ucred ;
 int to_zval_read_fd_array ;
 int to_zval_read_in6_pktinfo ;
 int to_zval_read_int ;
 int to_zval_read_ucred ;
 int zend_hash_init (int *,int,int *,int ,int) ;

__attribute__((used)) static void init_ancillary_registry(void)
{
 ancillary_reg_entry entry;
 anc_reg_key key;
 ancillary_registry.initialized = 1;

 zend_hash_init(&ancillary_registry.ht, 32, ((void*)0), ancillary_registery_free_elem, 1);
}
