#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ ut64 ;
typedef  scalar_t__ ut32 ;
struct r_bin_wasm_resizable_limits_t {int /*<<< orphan*/  maximum; scalar_t__ flags; int /*<<< orphan*/  initial; } ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC5 (RBuffer *b, ut64 max, struct r_bin_wasm_resizable_limits_t *out) {
	if (!b || max >= FUNC3 (b) || FUNC4 (b) > max || !out) {
		return 0;
	}
	ut32 i = FUNC4 (b);
	if (!(FUNC2 (b, max, &out->flags))) {
		return 0;
	}
	if (!(FUNC1 (b, max, &out->initial))) {
		return 0;
	}
	if (out->flags && (!(FUNC1 (b, max, &out->maximum)))) {
		return 0;
	}
	return (size_t)FUNC0 (FUNC4 (b) - i);
}