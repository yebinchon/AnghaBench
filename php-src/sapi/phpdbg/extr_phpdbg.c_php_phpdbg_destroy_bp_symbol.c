
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {scalar_t__ symbol; } ;
typedef TYPE_1__ phpdbg_breaksymbol_t ;


 char* Z_PTR_P (int *) ;
 int efree (char*) ;

__attribute__((used)) static void php_phpdbg_destroy_bp_symbol(zval *brake)
{
 efree((char *) ((phpdbg_breaksymbol_t *) Z_PTR_P(brake))->symbol);
 efree(Z_PTR_P(brake));
}
