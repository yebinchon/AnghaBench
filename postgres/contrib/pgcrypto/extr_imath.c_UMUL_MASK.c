#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mp_size ;
typedef  TYPE_1__* mp_int ;
struct TYPE_8__ {scalar_t__ used; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC5(mp_int X, mp_int Y, mp_int Z)
{
	mp_size		ua_ = FUNC2(X);
	mp_size		ub_ = FUNC2(Y);
	mp_size		o_ = ua_ + ub_;

	FUNC3(FUNC1(Z), o_);
	(void) FUNC4(FUNC1(X), FUNC1(Y), FUNC1(Z), ua_, ub_);
	Z->used = o_;
	FUNC0(Z);
}