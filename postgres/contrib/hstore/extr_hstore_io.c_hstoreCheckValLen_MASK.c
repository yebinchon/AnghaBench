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
 int /*<<< orphan*/  ERRCODE_STRING_DATA_RIGHT_TRUNCATION ; 
 int /*<<< orphan*/  ERROR ; 
 size_t HSTORE_MAX_VALUE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

size_t
FUNC3(size_t len)
{
	if (len > HSTORE_MAX_VALUE_LEN)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_STRING_DATA_RIGHT_TRUNCATION),
				 FUNC2("string too long for hstore value")));
	return len;
}