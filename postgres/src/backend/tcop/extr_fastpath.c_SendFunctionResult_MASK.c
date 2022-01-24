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
typedef  int int16 ;
typedef  char bytea ;
typedef  int /*<<< orphan*/  StringInfoData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FrontendProtocol ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int VARHDRSZ ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static void
FUNC18(Datum retval, bool isnull, Oid rettype, int16 format)
{
	bool		newstyle = (FUNC2(FrontendProtocol) >= 3);
	StringInfoData buf;

	FUNC11(&buf, 'V');

	if (isnull)
	{
		if (newstyle)
			FUNC16(&buf, -1);
	}
	else
	{
		if (!newstyle)
			FUNC13(&buf, 'G');

		if (format == 0)
		{
			Oid			typoutput;
			bool		typisvarlena;
			char	   *outputstr;

			FUNC9(rettype, &typoutput, &typisvarlena);
			outputstr = FUNC0(typoutput, retval);
			FUNC15(&buf, outputstr, FUNC17(outputstr), false);
			FUNC10(outputstr);
		}
		else if (format == 1)
		{
			Oid			typsend;
			bool		typisvarlena;
			bytea	   *outputbytes;

			FUNC8(rettype, &typsend, &typisvarlena);
			outputbytes = FUNC1(typsend, retval);
			FUNC16(&buf, FUNC4(outputbytes) - VARHDRSZ);
			FUNC14(&buf, FUNC3(outputbytes),
						 FUNC4(outputbytes) - VARHDRSZ);
			FUNC10(outputbytes);
		}
		else
			FUNC5(ERROR,
					(FUNC6(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC7("unsupported format code: %d", format)));
	}

	if (!newstyle)
		FUNC13(&buf, '0');

	FUNC12(&buf);
}