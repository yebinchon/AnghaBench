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
typedef  int /*<<< orphan*/  calldata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char const*,scalar_t__) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static inline void FUNC2(calldata_t *data, const char *name,
				       const char *str)
{
	if (str)
		FUNC0(data, name, str, FUNC1(str) + 1);
	else
		FUNC0(data, name, NULL, 0);
}