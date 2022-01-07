
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ref_map; int * mem_cache; int soap_version; int * sdl; int error_object; int * error_code; scalar_t__ use_soap_error_handler; int * typemap; int defEncNs; int defEncIndex; int defEnc; } ;
typedef TYPE_1__ zend_soap_globals ;


 int SOAP_1_1 ;
 int ZEND_TSRMLS_CACHE_UPDATE () ;
 int ZVAL_OBJ (int *,int *) ;
 int defEnc ;
 int defEncIndex ;
 int defEncNs ;

__attribute__((used)) static void php_soap_init_globals(zend_soap_globals *soap_globals)
{



 soap_globals->defEnc = defEnc;
 soap_globals->defEncIndex = defEncIndex;
 soap_globals->defEncNs = defEncNs;
 soap_globals->typemap = ((void*)0);
 soap_globals->use_soap_error_handler = 0;
 soap_globals->error_code = ((void*)0);
 ZVAL_OBJ(&soap_globals->error_object, ((void*)0));
 soap_globals->sdl = ((void*)0);
 soap_globals->soap_version = SOAP_1_1;
 soap_globals->mem_cache = ((void*)0);
 soap_globals->ref_map = ((void*)0);
}
