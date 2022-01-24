#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  njs_vm_t ;
struct TYPE_9__ {int length; int /*<<< orphan*/ * start; } ;
typedef  TYPE_1__ njs_str_t ;
struct TYPE_10__ {scalar_t__ disassemble; } ;
typedef  TYPE_2__ njs_opts_t ;
typedef  scalar_t__ njs_int_t ;
struct TYPE_11__ {int /*<<< orphan*/ * vm; } ;
typedef  TYPE_3__ njs_console_t ;

/* Variables and functions */
 scalar_t__ NJS_ERROR ; 
 scalar_t__ NJS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static njs_int_t
FUNC11(njs_console_t *console, njs_opts_t *opts,
    const njs_str_t *script)
{
    u_char     *start;
    njs_vm_t   *vm;
    njs_int_t  ret;

    vm = console->vm;
    start = script->start;

    ret = FUNC5(vm, &start, start + script->length);

    if (ret == NJS_OK) {
        if (opts->disassemble) {
            FUNC0(vm);
            FUNC1("\n");
        }

        ret = FUNC9(vm);
    }

    for ( ;; ) {
        if (!FUNC6(vm)) {
            break;
        }

        ret = FUNC2(console, opts);
        if (FUNC3(ret != NJS_OK)) {
            FUNC4("njs_process_events() failed\n");
            ret = NJS_ERROR;
            break;
        }

        if (FUNC10(vm) && !FUNC7(vm)) {
            /*TODO: async events. */

            FUNC4("njs_process_script(): async events unsupported\n");
            ret = NJS_ERROR;
            break;
        }

        ret = FUNC8(vm);
    }

    return ret;
}