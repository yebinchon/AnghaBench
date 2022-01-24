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
typedef  char WCHAR ;
typedef  scalar_t__ PWSTR ;
typedef  char const* PCWSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static inline PWSTR FUNC4(PCWSTR pProvName)
{
	static const WCHAR KEYSTR[] = {
                'S','o','f','t','w','a','r','e','\\',
                'M','i','c','r','o','s','o','f','t','\\',
                'C','r','y','p','t','o','g','r','a','p','h','y','\\',
                'D','e','f','a','u','l','t','s','\\',
                'P','r','o','v','i','d','e','r','\\',0
	};
	PWSTR keyname;

	keyname = FUNC0((FUNC3(KEYSTR) + FUNC3(pProvName) +1)*sizeof(WCHAR));
	if (keyname)
	{
		FUNC2(keyname, KEYSTR);
		FUNC2(keyname + FUNC3(KEYSTR), pProvName);
	} else
		FUNC1(ERROR_NOT_ENOUGH_MEMORY);
	return keyname;
}