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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (char const**) ; 

__attribute__((used)) static bool FUNC5(const char **sp, JsonNode **out)
{
	const char *s = *sp;
	JsonNode *ret = out ? FUNC2() : NULL;
	JsonNode *element;
	
	if (*s++ != '[')
		goto failure;
	FUNC4(&s);
	
	if (*s == ']') {
		s++;
		goto success;
	}
	
	for (;;) {
		if (!FUNC3(&s, out ? &element : NULL))
			goto failure;
		FUNC4(&s);
		
		if (out)
			FUNC0(ret, element);
		
		if (*s == ']') {
			s++;
			goto success;
		}
		
		if (*s++ != ',')
			goto failure;
		FUNC4(&s);
	}
	
success:
	*sp = s;
	if (out)
		*out = ret;
	return true;

failure:
	FUNC1(ret);
	return false;
}