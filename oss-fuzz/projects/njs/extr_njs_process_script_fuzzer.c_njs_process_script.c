
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
typedef int njs_vm_t ;
struct TYPE_9__ {int length; int * start; } ;
typedef TYPE_1__ njs_str_t ;
struct TYPE_10__ {scalar_t__ disassemble; } ;
typedef TYPE_2__ njs_opts_t ;
typedef scalar_t__ njs_int_t ;
struct TYPE_11__ {int * vm; } ;
typedef TYPE_3__ njs_console_t ;


 scalar_t__ NJS_ERROR ;
 scalar_t__ NJS_OK ;
 int njs_disassembler (int *) ;
 int njs_printf (char*) ;
 scalar_t__ njs_process_events (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ njs_slow_path (int) ;
 int njs_stderror (char*) ;
 scalar_t__ njs_vm_compile (int *,int **,int *) ;
 int njs_vm_pending (int *) ;
 int njs_vm_posted (int *) ;
 scalar_t__ njs_vm_run (int *) ;
 scalar_t__ njs_vm_start (int *) ;
 scalar_t__ njs_vm_waiting (int *) ;

__attribute__((used)) static njs_int_t
njs_process_script(njs_console_t *console, njs_opts_t *opts,
    const njs_str_t *script)
{
    u_char *start;
    njs_vm_t *vm;
    njs_int_t ret;

    vm = console->vm;
    start = script->start;

    ret = njs_vm_compile(vm, &start, start + script->length);

    if (ret == NJS_OK) {
        if (opts->disassemble) {
            njs_disassembler(vm);
            njs_printf("\n");
        }

        ret = njs_vm_start(vm);
    }

    for ( ;; ) {
        if (!njs_vm_pending(vm)) {
            break;
        }

        ret = njs_process_events(console, opts);
        if (njs_slow_path(ret != NJS_OK)) {
            njs_stderror("njs_process_events() failed\n");
            ret = NJS_ERROR;
            break;
        }

        if (njs_vm_waiting(vm) && !njs_vm_posted(vm)) {


            njs_stderror("njs_process_script(): async events unsupported\n");
            ret = NJS_ERROR;
            break;
        }

        ret = njs_vm_run(vm);
    }

    return ret;
}
