
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int known_post_content_types; } ;
typedef TYPE_1__ sapi_globals_struct ;


 int _type_dtor ;
 int memset (TYPE_1__*,int ,int) ;
 int php_setup_sapi_content_types () ;
 int zend_hash_init_ex (int *,int,int *,int ,int,int ) ;

__attribute__((used)) static void sapi_globals_ctor(sapi_globals_struct *sapi_globals)
{
 memset(sapi_globals, 0, sizeof(*sapi_globals));
 zend_hash_init_ex(&sapi_globals->known_post_content_types, 8, ((void*)0), _type_dtor, 1, 0);
 php_setup_sapi_content_types();
}
