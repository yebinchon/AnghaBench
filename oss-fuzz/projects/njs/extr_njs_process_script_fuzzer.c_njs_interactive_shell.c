
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int njs_vm_t ;
struct TYPE_4__ {int external; } ;
typedef TYPE_1__ njs_vm_opt_t ;
typedef int njs_str_t ;
typedef int njs_opts_t ;
typedef int njs_int_t ;


 int NJS_ERROR ;
 int NJS_OK ;
 int * njs_create_vm (int *,TYPE_1__*) ;
 int njs_process_script (int ,int *,int *) ;
 int njs_vm_destroy (int *) ;

__attribute__((used)) static njs_int_t
njs_interactive_shell(njs_opts_t *opts, njs_vm_opt_t *vm_options, njs_str_t *line)
{
    njs_vm_t *vm;

    vm = njs_create_vm(opts, vm_options);
    if (vm == ((void*)0)) {
        return NJS_ERROR;
    }

    njs_process_script(vm_options->external, opts, line);
    njs_vm_destroy(vm);
    vm = ((void*)0);

    return NJS_OK;
}
