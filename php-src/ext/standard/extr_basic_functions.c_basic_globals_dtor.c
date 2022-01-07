
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * tags; } ;
struct TYPE_5__ {int * tags; } ;
struct TYPE_7__ {int url_adapt_output_hosts_ht; int url_adapt_session_hosts_ht; TYPE_2__ url_adapt_output_ex; TYPE_1__ url_adapt_session_ex; } ;
typedef TYPE_3__ php_basic_globals ;


 int free (int *) ;
 int zend_hash_destroy (int *) ;

__attribute__((used)) static void basic_globals_dtor(php_basic_globals *basic_globals_p)
{
 if (basic_globals_p->url_adapt_session_ex.tags) {
  zend_hash_destroy(basic_globals_p->url_adapt_session_ex.tags);
  free(basic_globals_p->url_adapt_session_ex.tags);
 }
 if (basic_globals_p->url_adapt_output_ex.tags) {
  zend_hash_destroy(basic_globals_p->url_adapt_output_ex.tags);
  free(basic_globals_p->url_adapt_output_ex.tags);
 }

 zend_hash_destroy(&basic_globals_p->url_adapt_session_hosts_ht);
 zend_hash_destroy(&basic_globals_p->url_adapt_output_hosts_ht);
}
