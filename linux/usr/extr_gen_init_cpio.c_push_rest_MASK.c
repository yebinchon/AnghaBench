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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ offset ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(const char *name)
{
	unsigned int name_len = FUNC2(name) + 1;
	unsigned int tmp_ofs;

	FUNC0(name, stdout);
	FUNC1(0);
	offset += name_len;

	tmp_ofs = name_len + 110;
	while (tmp_ofs & 3) {
		FUNC1(0);
		offset++;
		tmp_ofs++;
	}
}