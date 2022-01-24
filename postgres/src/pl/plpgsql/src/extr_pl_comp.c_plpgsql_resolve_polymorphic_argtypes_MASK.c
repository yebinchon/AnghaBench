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
typedef  int Oid ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
#define  ANYARRAYOID 132 
#define  ANYELEMENTOID 131 
#define  ANYENUMOID 130 
#define  ANYNONARRAYOID 129 
#define  ANYRANGEOID 128 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int INT4ARRAYOID ; 
 int INT4OID ; 
 int INT4RANGEOID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,int*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(int numargs,
									 Oid *argtypes, char *argmodes,
									 Node *call_expr, bool forValidator,
									 const char *proname)
{
	int			i;

	if (!forValidator)
	{
		/* normal case, pass to standard routine */
		if (!FUNC3(numargs, argtypes, argmodes,
										  call_expr))
			FUNC0(ERROR,
					(FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC2("could not determine actual argument "
							"type for polymorphic function \"%s\"",
							proname)));
	}
	else
	{
		/* special validation case */
		for (i = 0; i < numargs; i++)
		{
			switch (argtypes[i])
			{
				case ANYELEMENTOID:
				case ANYNONARRAYOID:
				case ANYENUMOID:	/* XXX dubious */
					argtypes[i] = INT4OID;
					break;
				case ANYARRAYOID:
					argtypes[i] = INT4ARRAYOID;
					break;
				case ANYRANGEOID:
					argtypes[i] = INT4RANGEOID;
					break;
				default:
					break;
			}
		}
	}
}