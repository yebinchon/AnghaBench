
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int retval; } ;
typedef TYPE_1__ njs_vm_t ;
typedef int njs_value_t ;
typedef int njs_uint_t ;
typedef int njs_int_t ;
typedef int njs_index_t ;
struct TYPE_8__ {int time; } ;
typedef TYPE_2__ njs_console_t ;


 int NJS_ERROR ;
 int NJS_OK ;
 int njs_arg (int *,int ,int) ;
 scalar_t__ njs_slow_path (int ) ;
 int njs_time () ;
 int njs_value_is_undefined (int ) ;
 int njs_value_undefined ;
 int njs_vm_error (TYPE_1__*,char*) ;
 TYPE_2__* njs_vm_external (TYPE_1__*,int ) ;

__attribute__((used)) static njs_int_t
njs_ext_console_time(njs_vm_t *vm, njs_value_t *args, njs_uint_t nargs,
    njs_index_t unused)
{
    njs_console_t *console;

    if (!njs_value_is_undefined(njs_arg(args, nargs, 1))) {
        njs_vm_error(vm, "labels not implemented");
        return NJS_ERROR;
    }

    console = njs_vm_external(vm, njs_arg(args, nargs, 0));
    if (njs_slow_path(console == ((void*)0))) {
        return NJS_ERROR;
    }

    console->time = njs_time();

    vm->retval = njs_value_undefined;

    return NJS_OK;
}
