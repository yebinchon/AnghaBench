#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  njs_vm_t ;
struct TYPE_4__ {int /*<<< orphan*/  external; } ;
typedef  TYPE_1__ njs_vm_opt_t ;
typedef  int /*<<< orphan*/  njs_str_t ;
typedef  int /*<<< orphan*/  njs_opts_t ;
typedef  int /*<<< orphan*/  njs_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  NJS_ERROR ; 
 int /*<<< orphan*/  NJS_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static njs_int_t
FUNC3(njs_opts_t *opts, njs_vm_opt_t *vm_options, njs_str_t *line)
{
    njs_vm_t   *vm;

    vm = FUNC0(opts, vm_options);
    if (vm == NULL) {
        return NJS_ERROR;
    }

    FUNC1(vm_options->external, opts, line);
    FUNC2(vm);
    vm = NULL;

    return NJS_OK;
}