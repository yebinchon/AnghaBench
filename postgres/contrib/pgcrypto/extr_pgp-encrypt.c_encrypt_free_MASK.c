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
struct EncStat {scalar_t__ ciph; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct EncStat*) ; 
 int /*<<< orphan*/  FUNC2 (struct EncStat*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(void *priv)
{
	struct EncStat *st = priv;

	if (st->ciph)
		FUNC0(st->ciph);
	FUNC2(st, 0, sizeof(*st));
	FUNC1(st);
}