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
typedef  int /*<<< orphan*/  SV ;

/* Variables and functions */
 int /*<<< orphan*/  GV_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC9 (char const*) ; 

__attribute__((used)) static inline void
FUNC10(const char *str)
{
	dTHX;

#ifdef croak_sv
	/* Use sv_2mortal() to be sure the transient SV gets freed */
	croak_sv(sv_2mortal(cstr2sv(str)));
#else

	/*
	 * The older way to do this is to assign a UTF8-marked value to ERRSV and
	 * then call croak(NULL).  But if we leave it to croak() to append the
	 * error location, it does so too late (only after popping the stack) in
	 * some Perl versions.  Hence, use mess() to create an SV with the error
	 * location info already appended.
	 */
	SV		   *errsv = FUNC4("@", GV_ADD);
	char	   *utf8_str = FUNC9(str);
	SV		   *ssv;

	ssv = FUNC5("%s", utf8_str);
	FUNC0(ssv);

	FUNC6(utf8_str);

	FUNC8(errsv, ssv);

	FUNC1(NULL);
#endif							/* croak_sv */
}