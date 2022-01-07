
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__ OBJ_NAME ;


 int add_next_index_string (int *,char*) ;

__attribute__((used)) static void php_openssl_add_method_or_alias(const OBJ_NAME *name, void *arg)
{
 add_next_index_string((zval*)arg, (char*)name->name);
}
