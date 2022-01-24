#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  retval; } ;
typedef  TYPE_1__ njs_vm_t ;
typedef  int /*<<< orphan*/  njs_value_t ;
typedef  int njs_uint_t ;
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  start; } ;
typedef  TYPE_2__ njs_str_t ;
typedef  scalar_t__ njs_int_t ;
typedef  int /*<<< orphan*/  njs_index_t ;

/* Variables and functions */
 scalar_t__ NJS_ERROR ; 
 scalar_t__ NJS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  njs_value_undefined ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static njs_int_t
FUNC4(njs_vm_t *vm, njs_value_t *args, njs_uint_t nargs,
    njs_index_t unused)
{
    njs_str_t   msg;
    njs_uint_t  n;

    n = 1;

    while (n < nargs) {
        if (FUNC3(vm, &msg, FUNC0(args, n), 1, 1)
            == NJS_ERROR)
        {
            return NJS_ERROR;
        }

        FUNC2("%s", (n != 1) ? " " : "");
        FUNC1(msg.start, msg.length);

        n++;
    }

    if (nargs > 1) {
        FUNC2("\n");
    }

    vm->retval = njs_value_undefined;

    return NJS_OK;
}