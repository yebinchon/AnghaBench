#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_7__ {scalar_t__ p; } ;
typedef  TYPE_1__* STREAM ;

/* Variables and functions */
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  g_licence_issued ; 
 scalar_t__ g_licence_key ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,char*,int) ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC9(STREAM s)
{
	void * crypt_key;
	uint32 length;
	int i;

	FUNC2(s, 2);	// Skip license binary blob type
	FUNC0(s, length);
	if (!FUNC7(s, length))
		return;

	crypt_key = FUNC4();
	FUNC6(crypt_key, (char *)g_licence_key, 16);
	FUNC3(crypt_key, (char *)s->p, (char *)s->p, length);
	FUNC5(crypt_key);

	/* Parse NEW_LICENSE_INFO block */
	FUNC2(s, 4);	// skip dwVersion

	/* Skip strings, Scope, CompanyName and ProductId to get
	   to the LicenseInfo which we store in license blob. */
	length = 0;
	for (i = 0; i < 4; i++)
	{
		FUNC2(s, length);
		FUNC1(s, length);
		if (!FUNC7(s, length))
			return;
	}

	g_licence_issued = True;
	FUNC8(s->p, length);
}