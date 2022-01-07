
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int Z_PTR_P (int *) ;
 int efree (int ) ;

__attribute__((used)) static void php_phpdbg_destroy_bp_opline(zval *brake)
{
 efree(Z_PTR_P(brake));
}
