#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ ull; scalar_t__ sll; unsigned long ulong; long slong; unsigned int uint; int sint; } ;
typedef  TYPE_1__ YYSTYPE ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 long INT_MAX ; 
 long INT_MIN ; 
 scalar_t__ LLONG_MAX ; 
 scalar_t__ LLONG_MIN ; 
 long LONG_MAX ; 
 long LONG_MIN ; 
 unsigned long UINT_MAX ; 
 scalar_t__ ULLONG_MAX ; 
 unsigned long ULONG_MAX ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 void* FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 void* FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 int tSINT ; 
 int tSLONG ; 
 int tSLONGLONG ; 
 int tUINT ; 
 int tULONG ; 
 int tULONGLONG ; 
 char FUNC6 (char const) ; 

__attribute__((used)) static int FUNC7(int radix, YYSTYPE *val, const char *str, int len)
{
	int is_l  = 0;
	int is_ll = 0;
	int is_u  = 0;
	char ext[4];
	long l;

	ext[3] = '\0';
	ext[2] = FUNC6(str[len-1]);
	ext[1] = len > 1 ? FUNC6(str[len-2]) : ' ';
	ext[0] = len > 2 ? FUNC6(str[len-3]) : ' ';

	if(!FUNC3(ext, "LUL"))
	{
		FUNC2("Invalid constant suffix");
		return 0;
	}
	else if(!FUNC3(ext, "LLU") || !FUNC3(ext, "ULL"))
	{
		is_ll++;
		is_u++;
	}
	else if(!FUNC3(ext+1, "LU") || !FUNC3(ext+1, "UL"))
	{
		is_l++;
		is_u++;
	}
	else if(!FUNC3(ext+1, "LL"))
	{
		is_ll++;
	}
	else if(!FUNC3(ext+2, "L"))
	{
		is_l++;
	}
	else if(!FUNC3(ext+2, "U"))
	{
		is_u++;
	}

	if(is_u && is_ll)
	{
		errno = 0;
		val->ull = FUNC1(str, NULL, radix);
		if (val->ull == ULLONG_MAX && errno == ERANGE)
		    FUNC2("integer constant %s is too large\n", str);
		return tULONGLONG;
	}
	else if(!is_u && is_ll)
	{
		errno = 0;
		val->sll = FUNC0(str, NULL, radix);
		if ((val->sll == LLONG_MIN || val->sll == LLONG_MAX) && errno == ERANGE)
		    FUNC2("integer constant %s is too large\n", str);
		return tSLONGLONG;
	}
	else if(is_u && is_l)
	{
		errno = 0;
		val->ulong = FUNC5(str, NULL, radix);
		if (val->ulong == ULONG_MAX && errno == ERANGE)
			FUNC2("integer constant %s is too large\n", str);
		return tULONG;
	}
	else if(!is_u && is_l)
	{
		errno = 0;
		val->slong = FUNC4(str, NULL, radix);
		if ((val->slong == LONG_MIN || val->slong == LONG_MAX) && errno == ERANGE)
			FUNC2("integer constant %s is too large\n", str);
		return tSLONG;
	}
	else if(is_u && !is_l)
	{
		unsigned long ul;
		errno = 0;
		ul = FUNC5(str, NULL, radix);
		if ((ul == ULONG_MAX && errno == ERANGE) || (ul > UINT_MAX))
			FUNC2("integer constant %s is too large\n", str);
		val->uint = (unsigned int)ul;
		return tUINT;
	}

	/* Else it must be an int... */
	errno = 0;
	l = FUNC4(str, NULL, radix);
	if (((l == LONG_MIN || l == LONG_MAX) && errno == ERANGE) ||
		(l > INT_MAX) || (l < INT_MIN))
		FUNC2("integer constant %s is too large\n", str);
	val->sint = (int)l;
	return tSINT;
}