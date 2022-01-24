#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int mp_size ;
typedef  TYPE_1__* mp_int ;
typedef  int /*<<< orphan*/  mp_digit ;
struct TYPE_5__ {int used; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static inline void
FUNC2(mp_int z_)
{
	mp_size		uz_ = FUNC1(z_);
	mp_digit   *dz_ = FUNC0(z_) + uz_ - 1;

	while (uz_ > 1 && (*dz_-- == 0))
		--uz_;
	z_->used = uz_;
}