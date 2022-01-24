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
 int /*<<< orphan*/  FUNC0 (char const**,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (double) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (char const**,double*) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (char const**,char**) ; 

__attribute__((used)) static bool FUNC9(const char **sp, JsonNode **out)
{
	const char *s = *sp;
	
	switch (*s) {
		case 'n':
			if (FUNC0(&s, "null")) {
				if (out)
					*out = FUNC2();
				*sp = s;
				return true;
			}
			return false;
		
		case 'f':
			if (FUNC0(&s, "false")) {
				if (out)
					*out = FUNC1(false);
				*sp = s;
				return true;
			}
			return false;
		
		case 't':
			if (FUNC0(&s, "true")) {
				if (out)
					*out = FUNC1(true);
				*sp = s;
				return true;
			}
			return false;
		
		case '"': {
			char *str;
			if (FUNC8(&s, out ? &str : NULL)) {
				if (out)
					*out = FUNC4(str);
				*sp = s;
				return true;
			}
			return false;
		}
		
		case '[':
			if (FUNC5(&s, out)) {
				*sp = s;
				return true;
			}
			return false;
		
		case '{':
			if (FUNC7(&s, out)) {
				*sp = s;
				return true;
			}
			return false;
		
		default: {
			double num;
			if (FUNC6(&s, out ? &num : NULL)) {
				if (out)
					*out = FUNC3(num);
				*sp = s;
				return true;
			}
			return false;
		}
	}
}