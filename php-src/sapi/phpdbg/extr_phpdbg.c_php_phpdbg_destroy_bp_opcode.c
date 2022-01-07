
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {scalar_t__ name; } ;
typedef TYPE_1__ phpdbg_breakop_t ;


 char* Z_PTR_P (int *) ;
 int efree (char*) ;

__attribute__((used)) static void php_phpdbg_destroy_bp_opcode(zval *brake)
{
 efree((char *) ((phpdbg_breakop_t *) Z_PTR_P(brake))->name);
 efree(Z_PTR_P(brake));
}
