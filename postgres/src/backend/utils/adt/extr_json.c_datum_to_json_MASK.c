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
typedef  char text ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int JsonTypeCategory ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DATEOID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
#define  JSONTYPE_ARRAY 136 
#define  JSONTYPE_BOOL 135 
#define  JSONTYPE_CAST 134 
#define  JSONTYPE_COMPOSITE 133 
#define  JSONTYPE_DATE 132 
#define  JSONTYPE_JSON 131 
#define  JSONTYPE_NUMERIC 130 
#define  JSONTYPE_TIMESTAMP 129 
#define  JSONTYPE_TIMESTAMPTZ 128 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAXDATELEN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIMESTAMPOID ; 
 int /*<<< orphan*/  TIMESTAMPTZOID ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 char* FUNC18 (char*) ; 

__attribute__((used)) static void
FUNC19(Datum val, bool is_null, StringInfo result,
			  JsonTypeCategory tcategory, Oid outfuncoid,
			  bool key_scalar)
{
	char	   *outputstr;
	text	   *jsontext;

	FUNC10();

	/* callers are expected to ensure that null keys are not passed in */
	FUNC0(!(key_scalar && is_null));

	if (is_null)
	{
		FUNC8(result, "null");
		return;
	}

	if (key_scalar &&
		(tcategory == JSONTYPE_ARRAY ||
		 tcategory == JSONTYPE_COMPOSITE ||
		 tcategory == JSONTYPE_JSON ||
		 tcategory == JSONTYPE_CAST))
		FUNC12(ERROR,
				(FUNC13(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC14("key value must be scalar, not array, composite, or json")));

	switch (tcategory)
	{
		case JSONTYPE_ARRAY:
			FUNC9(val, result, false);
			break;
		case JSONTYPE_COMPOSITE:
			FUNC11(val, result, false);
			break;
		case JSONTYPE_BOOL:
			outputstr = FUNC1(val) ? "true" : "false";
			if (key_scalar)
				FUNC15(result, outputstr);
			else
				FUNC8(result, outputstr);
			break;
		case JSONTYPE_NUMERIC:
			outputstr = FUNC6(outfuncoid, val);

			/*
			 * Don't call escape_json for a non-key if it's a valid JSON
			 * number.
			 */
			if (!key_scalar && FUNC3(outputstr, FUNC17(outputstr)))
				FUNC8(result, outputstr);
			else
				FUNC15(result, outputstr);
			FUNC16(outputstr);
			break;
		case JSONTYPE_DATE:
			{
				char		buf[MAXDATELEN + 1];

				FUNC4(buf, val, DATEOID, NULL);
				FUNC7(result, "\"%s\"", buf);
			}
			break;
		case JSONTYPE_TIMESTAMP:
			{
				char		buf[MAXDATELEN + 1];

				FUNC4(buf, val, TIMESTAMPOID, NULL);
				FUNC7(result, "\"%s\"", buf);
			}
			break;
		case JSONTYPE_TIMESTAMPTZ:
			{
				char		buf[MAXDATELEN + 1];

				FUNC4(buf, val, TIMESTAMPTZOID, NULL);
				FUNC7(result, "\"%s\"", buf);
			}
			break;
		case JSONTYPE_JSON:
			/* JSON and JSONB output will already be escaped */
			outputstr = FUNC6(outfuncoid, val);
			FUNC8(result, outputstr);
			FUNC16(outputstr);
			break;
		case JSONTYPE_CAST:
			/* outfuncoid refers to a cast function, not an output function */
			jsontext = FUNC2(FUNC5(outfuncoid, val));
			outputstr = FUNC18(jsontext);
			FUNC8(result, outputstr);
			FUNC16(outputstr);
			FUNC16(jsontext);
			break;
		default:
			outputstr = FUNC6(outfuncoid, val);
			FUNC15(result, outputstr);
			FUNC16(outputstr);
			break;
	}
}