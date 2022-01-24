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
typedef  int uint32_t ;
struct serializer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct serializer*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct serializer*,int) ; 

__attribute__((used)) static bool FUNC4(struct serializer *s, char **p_str)
{
	uint32_t size;
	char *str;

	if (!FUNC3(s, size))
		return false;

	str = FUNC1(size + 1);
	if (size && !FUNC2(s, str, size)) {
		FUNC0(str);
		return false;
	}

	str[size] = 0;
	*p_str = str;
	return true;
}