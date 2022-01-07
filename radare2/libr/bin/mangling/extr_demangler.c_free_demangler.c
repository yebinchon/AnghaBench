
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* symbol; } ;
typedef TYPE_1__ SDemangler ;


 int R_FREE (TYPE_1__*) ;

void free_demangler(SDemangler *demangler)
{
 R_FREE(demangler->symbol);
 R_FREE(demangler);
}
