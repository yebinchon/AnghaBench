
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int retval; } ;
typedef TYPE_1__ njs_vm_t ;
typedef int njs_value_t ;
typedef int njs_uint_t ;
struct TYPE_7__ {int length; int start; } ;
typedef TYPE_2__ njs_str_t ;
typedef scalar_t__ njs_int_t ;
typedef int njs_index_t ;


 scalar_t__ NJS_ERROR ;
 scalar_t__ NJS_OK ;
 int njs_argument (int *,int) ;
 int njs_print (int ,int ) ;
 int njs_printf (char*,...) ;
 int njs_value_undefined ;
 scalar_t__ njs_vm_value_dump (TYPE_1__*,TYPE_2__*,int ,int,int ) ;

__attribute__((used)) static njs_int_t
njs_ext_console_log(njs_vm_t *vm, njs_value_t *args, njs_uint_t nargs,
    njs_index_t unused)
{
    njs_str_t msg;
    njs_uint_t n;

    n = 1;

    while (n < nargs) {
        if (njs_vm_value_dump(vm, &msg, njs_argument(args, n), 1, 0)
            == NJS_ERROR)
        {
            return NJS_ERROR;
        }

        njs_printf("%s", (n != 1) ? " " : "");
        njs_print(msg.start, msg.length);

        n++;
    }

    if (nargs > 1) {
        njs_printf("\n");
    }

    vm->retval = njs_value_undefined;

    return NJS_OK;
}
