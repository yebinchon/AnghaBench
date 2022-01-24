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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  inet ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_BINARY_REPRESENTATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int) ; 
 int /*<<< orphan*/ * FUNC9 (char*,char) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static char *
FUNC11(inet *src, bool is_cidr)
{
	char		tmp[sizeof("xxxx:xxxx:xxxx:xxxx:xxxx:xxxx:255.255.255.255/128")];
	char	   *dst;
	int			len;

	dst = FUNC6(FUNC5(src), FUNC3(src), FUNC4(src),
						   tmp, sizeof(tmp));
	if (dst == NULL)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_BINARY_REPRESENTATION),
				 FUNC2("could not format inet value: %m")));

	/* For CIDR, add /n if not present */
	if (is_cidr && FUNC9(tmp, '/') == NULL)
	{
		len = FUNC10(tmp);
		FUNC8(tmp + len, sizeof(tmp) - len, "/%u", FUNC4(src));
	}

	return FUNC7(tmp);
}