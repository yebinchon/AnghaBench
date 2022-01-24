#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_7__ {int /*<<< orphan*/  retval; } ;
typedef  TYPE_1__ njs_vm_t ;
typedef  int /*<<< orphan*/  njs_value_t ;
typedef  int /*<<< orphan*/  njs_uint_t ;
typedef  int /*<<< orphan*/  njs_int_t ;
typedef  int /*<<< orphan*/  njs_index_t ;
struct TYPE_8__ {scalar_t__ time; } ;
typedef  TYPE_2__ njs_console_t ;

/* Variables and functions */
 int /*<<< orphan*/  NJS_ERROR ; 
 int /*<<< orphan*/  NJS_OK ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  njs_value_undefined ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 TYPE_2__* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static njs_int_t
FUNC8(njs_vm_t *vm, njs_value_t *args, njs_uint_t nargs,
    njs_index_t unused)
{
    uint64_t       ns, ms;
    njs_console_t  *console;

    ns = FUNC4();

    if (!FUNC5(FUNC0(args, nargs, 1))) {
        FUNC6(vm, "labels not implemented");
        return NJS_ERROR;
    }

    console = FUNC7(vm, FUNC0(args, nargs, 0));
    if (FUNC3(console == NULL)) {
        return NJS_ERROR;
    }

    if (FUNC1(console->time != UINT64_MAX)) {

        ns = ns - console->time;

        ms = ns / 1000000;
        ns = ns % 1000000;

        FUNC2("default: %uL.%06uLms\n", ms, ns);

        console->time = UINT64_MAX;

    } else {
        FUNC2("Timer \"default\" doesn’t exist.\n");
    }

    vm->retval = njs_value_undefined;

    return NJS_OK;
}