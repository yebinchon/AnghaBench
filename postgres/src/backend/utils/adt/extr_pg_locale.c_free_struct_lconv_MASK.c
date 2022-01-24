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
struct lconv {scalar_t__ negative_sign; scalar_t__ positive_sign; scalar_t__ mon_grouping; scalar_t__ mon_thousands_sep; scalar_t__ mon_decimal_point; scalar_t__ currency_symbol; scalar_t__ int_curr_symbol; scalar_t__ grouping; scalar_t__ thousands_sep; scalar_t__ decimal_point; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static void
FUNC1(struct lconv *s)
{
	if (s->decimal_point)
		FUNC0(s->decimal_point);
	if (s->thousands_sep)
		FUNC0(s->thousands_sep);
	if (s->grouping)
		FUNC0(s->grouping);
	if (s->int_curr_symbol)
		FUNC0(s->int_curr_symbol);
	if (s->currency_symbol)
		FUNC0(s->currency_symbol);
	if (s->mon_decimal_point)
		FUNC0(s->mon_decimal_point);
	if (s->mon_thousands_sep)
		FUNC0(s->mon_thousands_sep);
	if (s->mon_grouping)
		FUNC0(s->mon_grouping);
	if (s->positive_sign)
		FUNC0(s->positive_sign);
	if (s->negative_sign)
		FUNC0(s->negative_sign);
}