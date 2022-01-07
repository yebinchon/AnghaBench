
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int known_post_content_types; } ;
typedef TYPE_1__ sapi_globals_struct ;


 int zend_hash_destroy (int *) ;

__attribute__((used)) static void sapi_globals_dtor(sapi_globals_struct *sapi_globals)
{
 zend_hash_destroy(&sapi_globals->known_post_content_types);
}
