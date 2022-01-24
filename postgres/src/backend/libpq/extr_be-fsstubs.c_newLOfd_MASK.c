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
typedef  int /*<<< orphan*/  LargeObjectDesc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ ** cookies ; 
 int cookies_size ; 
 int /*<<< orphan*/  fscxt ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static int
FUNC4(LargeObjectDesc *lobjCookie)
{
	int			i,
				newsize;

	/* Try to find a free slot */
	for (i = 0; i < cookies_size; i++)
	{
		if (cookies[i] == NULL)
		{
			cookies[i] = lobjCookie;
			return i;
		}
	}

	/* No free slot, so make the array bigger */
	if (cookies_size <= 0)
	{
		/* First time through, arbitrarily make 64-element array */
		i = 0;
		newsize = 64;
		cookies = (LargeObjectDesc **)
			FUNC2(fscxt, newsize * sizeof(LargeObjectDesc *));
		cookies_size = newsize;
	}
	else
	{
		/* Double size of array */
		i = cookies_size;
		newsize = cookies_size * 2;
		cookies = (LargeObjectDesc **)
			FUNC3(cookies, newsize * sizeof(LargeObjectDesc *));
		FUNC1(cookies + cookies_size, 0,
			   (newsize - cookies_size) * sizeof(LargeObjectDesc *));
		cookies_size = newsize;
	}

	FUNC0(cookies[i] == NULL);
	cookies[i] = lobjCookie;
	return i;
}