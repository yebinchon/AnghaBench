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
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 unsigned int FUNC4 (char*,int) ; 

__attribute__((used)) static inline void
FUNC5(char *isn)
{
	char	   *aux;
	unsigned	check;

	/*
	 * The number should come in this format: 978-0-000-00000-0 or may be an
	 * ISBN-13 number, 979-..., which does not have a short representation. Do
	 * the short output version if possible.
	 */
	if (FUNC3("978-", isn, 4) == 0)
	{
		/* Strip the first part and calculate the new check digit */
		FUNC0(isn, isn + 4, NULL, NULL);
		check = FUNC4(isn, 10);
		aux = FUNC2(isn, '\0');
		while (!FUNC1((unsigned char) *--aux));
		if (check == 10)
			*aux = 'X';
		else
			*aux = check + '0';
	}
}