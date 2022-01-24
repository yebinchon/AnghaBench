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
 char* FUNC0 (int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static bool
FUNC6(int category, const char *loca, const char *locb)
{
	const char *chara;
	const char *charb;
	char	   *canona;
	char	   *canonb;
	int			lena;
	int			lenb;

	/*
	 * If the names are equal, the locales are equivalent. Checking this first
	 * avoids calling setlocale() in the common case that the names are equal.
	 * That's a good thing, if setlocale() is buggy, for example.
	 */
	if (FUNC2(loca, locb) == 0)
		return true;

	/*
	 * Not identical. Canonicalize both names, remove the encoding parts, and
	 * try again.
	 */
	canona = FUNC0(category, loca);
	chara = FUNC5(canona, '.');
	lena = chara ? (chara - canona) : FUNC4(canona);

	canonb = FUNC0(category, locb);
	charb = FUNC5(canonb, '.');
	lenb = charb ? (charb - canonb) : FUNC4(canonb);

	if (lena == lenb && FUNC3(canona, canonb, lena) == 0)
	{
		FUNC1(canona);
		FUNC1(canonb);
		return true;
	}

	FUNC1(canona);
	FUNC1(canonb);
	return false;
}