#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  sqlerrmc; int /*<<< orphan*/  sqlerrml; } ;
struct sqlca_t {int sqlcode; TYPE_1__ sqlerrm; int /*<<< orphan*/  sqlstate; } ;

/* Variables and functions */
#define  ECPG_ARRAY_INSERT 151 
#define  ECPG_CONNECT 150 
#define  ECPG_CONVERT_BOOL 149 
#define  ECPG_DATA_NOT_ARRAY 148 
#define  ECPG_EMPTY 147 
#define  ECPG_FLOAT_FORMAT 146 
#define  ECPG_INT_FORMAT 145 
#define  ECPG_INVALID_DESCRIPTOR_INDEX 144 
#define  ECPG_INVALID_STMT 143 
#define  ECPG_MISSING_INDICATOR 142 
#define  ECPG_NOT_CONN 141 
#define  ECPG_NOT_FOUND 140 
#define  ECPG_NO_ARRAY 139 
#define  ECPG_NO_CONN 138 
#define  ECPG_OUT_OF_MEMORY 137 
#define  ECPG_TOO_FEW_ARGUMENTS 136 
#define  ECPG_TOO_MANY_ARGUMENTS 135 
#define  ECPG_TRANS 134 
#define  ECPG_UINT_FORMAT 133 
#define  ECPG_UNKNOWN_DESCRIPTOR 132 
#define  ECPG_UNKNOWN_DESCRIPTOR_ITEM 131 
#define  ECPG_UNSUPPORTED 130 
#define  ECPG_VAR_NOT_CHAR 129 
#define  ECPG_VAR_NOT_NUMERIC 128 
 int /*<<< orphan*/  FUNC0 () ; 
 struct sqlca_t* FUNC1 () ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 

void
FUNC7(int line, int code, const char *sqlstate, const char *str)
{
	struct sqlca_t *sqlca = FUNC1();

	if (sqlca == NULL)
	{
		FUNC3("out of memory");
		FUNC0();
		return;
	}

	sqlca->sqlcode = code;
	FUNC6(sqlca->sqlstate, sqlstate, sizeof(sqlca->sqlstate));

	switch (code)
	{
		case ECPG_NOT_FOUND:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("no data found on line %d"), line);
			break;

		case ECPG_OUT_OF_MEMORY:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("out of memory on line %d"), line);
			break;

		case ECPG_UNSUPPORTED:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("unsupported type \"%s\" on line %d"), str, line);
			break;

		case ECPG_TOO_MANY_ARGUMENTS:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("too many arguments on line %d"), line);
			break;

		case ECPG_TOO_FEW_ARGUMENTS:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("too few arguments on line %d"), line);
			break;

		case ECPG_INT_FORMAT:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("invalid input syntax for type int: \"%s\", on line %d"), str, line);
			break;

		case ECPG_UINT_FORMAT:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("invalid input syntax for type unsigned int: \"%s\", on line %d"), str, line);
			break;

		case ECPG_FLOAT_FORMAT:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("invalid input syntax for floating-point type: \"%s\", on line %d"), str, line);
			break;

		case ECPG_CONVERT_BOOL:
			if (str)
				FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
				/*------
				   translator: this string will be truncated at 149 characters expanded.  */
						 FUNC2("invalid syntax for type boolean: \"%s\", on line %d"), str, line);
			else
				FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
				/*------
				   translator: this string will be truncated at 149 characters expanded.  */
						 FUNC2("could not convert boolean value: size mismatch, on line %d"), line);
			break;

		case ECPG_EMPTY:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("empty query on line %d"), line);
			break;

		case ECPG_MISSING_INDICATOR:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("null value without indicator on line %d"), line);
			break;

		case ECPG_NO_ARRAY:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("variable does not have an array type on line %d"), line);
			break;

		case ECPG_DATA_NOT_ARRAY:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("data read from server is not an array on line %d"), line);
			break;

		case ECPG_ARRAY_INSERT:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("inserting an array of variables is not supported on line %d"), line);
			break;

		case ECPG_NO_CONN:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("connection \"%s\" does not exist on line %d"), str, line);
			break;

		case ECPG_NOT_CONN:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("not connected to connection \"%s\" on line %d"), str, line);
			break;

		case ECPG_INVALID_STMT:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("invalid statement name \"%s\" on line %d"), str, line);
			break;

		case ECPG_UNKNOWN_DESCRIPTOR:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("descriptor \"%s\" not found on line %d"), str, line);
			break;

		case ECPG_INVALID_DESCRIPTOR_INDEX:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("descriptor index out of range on line %d"), line);
			break;

		case ECPG_UNKNOWN_DESCRIPTOR_ITEM:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("unrecognized descriptor item \"%s\" on line %d"), str, line);
			break;

		case ECPG_VAR_NOT_NUMERIC:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("variable does not have a numeric type on line %d"), line);
			break;

		case ECPG_VAR_NOT_CHAR:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("variable does not have a character type on line %d"), line);
			break;

		case ECPG_TRANS:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("error in transaction processing on line %d"), line);
			break;

		case ECPG_CONNECT:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("could not connect to database \"%s\" on line %d"), str, line);
			break;

		default:
			FUNC4(sqlca->sqlerrm.sqlerrmc, sizeof(sqlca->sqlerrm.sqlerrmc),
			/*------
			   translator: this string will be truncated at 149 characters expanded.  */
					 FUNC2("SQL error %d on line %d"), code, line);
			break;
	}

	sqlca->sqlerrm.sqlerrml = FUNC5(sqlca->sqlerrm.sqlerrmc);
	FUNC3("raising sqlcode %d on line %d: %s\n", code, line, sqlca->sqlerrm.sqlerrmc);

	/* free all memory we have allocated for the user */
	FUNC0();
}