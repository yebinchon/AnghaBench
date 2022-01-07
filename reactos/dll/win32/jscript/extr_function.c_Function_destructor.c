
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int jsdisp_t ;
struct TYPE_7__ {TYPE_1__* vtbl; } ;
struct TYPE_6__ {int (* destructor ) (TYPE_2__*) ;} ;
typedef TYPE_2__ FunctionInstance ;


 TYPE_2__* function_from_jsdisp (int *) ;
 int heap_free (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void Function_destructor(jsdisp_t *dispex)
{
    FunctionInstance *function = function_from_jsdisp(dispex);
    function->vtbl->destructor(function);
    heap_free(function);
}
