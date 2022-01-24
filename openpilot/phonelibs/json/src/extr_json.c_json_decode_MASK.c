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
typedef  int /*<<< orphan*/  JsonNode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char const**) ; 

JsonNode *FUNC3(const char *json)
{
	const char *s = json;
	JsonNode *ret;
	
	FUNC2(&s);
	if (!FUNC1(&s, &ret))
		return NULL;
	
	FUNC2(&s);
	if (*s != 0) {
		FUNC0(ret);
		return NULL;
	}
	
	return ret;
}