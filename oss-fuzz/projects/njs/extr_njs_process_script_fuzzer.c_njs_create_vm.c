
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
typedef int njs_vm_t ;
struct TYPE_8__ {int external; } ;
typedef TYPE_1__ njs_vm_opt_t ;
typedef size_t njs_uint_t ;
struct TYPE_9__ {size_t length; int * start; } ;
typedef TYPE_2__ njs_str_t ;
struct TYPE_10__ {size_t n_paths; int ** paths; } ;
typedef TYPE_3__ njs_opts_t ;
typedef scalar_t__ njs_int_t ;


 scalar_t__ NJS_OK ;
 scalar_t__ getenv (char*) ;
 scalar_t__ njs_externals_init (int *,int ) ;
 int njs_stderror (char*) ;
 int * njs_strchr (int *,char) ;
 size_t njs_strlen (int *) ;
 scalar_t__ njs_vm_add_path (int *,TYPE_2__*) ;
 int * njs_vm_create (TYPE_1__*) ;

__attribute__((used)) static njs_vm_t *
njs_create_vm(njs_opts_t *opts, njs_vm_opt_t *vm_options)
{
    u_char *p, *start;
    njs_vm_t *vm;
    njs_int_t ret;
    njs_str_t path;
    njs_uint_t i;

    vm = njs_vm_create(vm_options);
    if (vm == ((void*)0)) {
        njs_stderror("failed to create vm\n");
        return ((void*)0);
    }

    if (njs_externals_init(vm, vm_options->external) != NJS_OK) {
        njs_stderror("failed to add external protos\n");
        return ((void*)0);
    }

    for (i = 0; i < opts->n_paths; i++) {
        path.start = (u_char *) opts->paths[i];
        path.length = njs_strlen(opts->paths[i]);

        ret = njs_vm_add_path(vm, &path);
        if (ret != NJS_OK) {
            njs_stderror("failed to add path\n");
            return ((void*)0);
        }
    }

    start = (u_char *) getenv("NJS_PATH");
    if (start == ((void*)0)) {
        return vm;
    }

    for ( ;; ) {
        p = njs_strchr(start, ':');

        path.start = start;
        path.length = (p != ((void*)0)) ? (size_t) (p - start) : njs_strlen(start);

        ret = njs_vm_add_path(vm, &path);
        if (ret != NJS_OK) {
            njs_stderror("failed to add path\n");
            return ((void*)0);
        }

        if (p == ((void*)0)) {
            break;
        }

        start = p + 1;
    }

    return vm;
}
