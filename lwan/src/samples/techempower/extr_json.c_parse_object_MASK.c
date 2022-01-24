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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char const**,char**) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (char const**) ; 

__attribute__((used)) static bool FUNC7(const char **sp, JsonNode **out)
{
	const char *s = *sp;
	JsonNode *ret = out ? FUNC3() : NULL;
	char *key;
	JsonNode *value;
	
	if (*s++ != '{')
		goto failure;
	FUNC6(&s);
	
	if (*s == '}') {
		s++;
		goto success;
	}
	
	for (;;) {
		if (!FUNC4(&s, out ? &key : NULL))
			goto failure;
		FUNC6(&s);
		
		if (*s++ != ':')
			goto failure_free_key;
		FUNC6(&s);
		
		if (!FUNC5(&s, out ? &value : NULL))
			goto failure_free_key;
		FUNC6(&s);
		
		if (out)
			FUNC0(ret, key, value);
		
		if (*s == '}') {
			s++;
			goto success;
		}
		
		if (*s++ != ',')
			goto failure;
		FUNC6(&s);
	}
	
success:
	*sp = s;
	if (out)
		*out = ret;
	return true;

failure_free_key:
	if (out)
		FUNC1(key);
failure:
	FUNC2(ret);
	return false;
}