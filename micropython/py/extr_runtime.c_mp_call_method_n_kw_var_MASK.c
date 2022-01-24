#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_3__ {int n_alloc; int /*<<< orphan*/  args; int /*<<< orphan*/  n_kw; int /*<<< orphan*/  n_args; int /*<<< orphan*/  fun; } ;
typedef  TYPE_1__ mp_call_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,size_t,int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

mp_obj_t FUNC3(bool have_self, size_t n_args_n_kw, const mp_obj_t *args) {
    mp_call_args_t out_args;
    FUNC1(have_self, n_args_n_kw, args, &out_args);

    mp_obj_t res = FUNC0(out_args.fun, out_args.n_args, out_args.n_kw, out_args.args);
    FUNC2(out_args.args, out_args.n_alloc * sizeof(mp_obj_t));

    return res;
}