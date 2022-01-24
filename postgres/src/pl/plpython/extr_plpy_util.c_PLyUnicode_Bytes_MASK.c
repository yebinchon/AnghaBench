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
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ PG_UTF8 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

PyObject *
FUNC13(PyObject *unicode)
{
	PyObject   *bytes,
			   *rv;
	char	   *utf8string,
			   *encoded;

	/* First encode the Python unicode object with UTF-8. */
	bytes = FUNC8(unicode);
	if (bytes == NULL)
		FUNC5(ERROR, "could not convert Python Unicode object to bytes");

	utf8string = FUNC6(bytes);
	if (utf8string == NULL)
	{
		FUNC9(bytes);
		FUNC5(ERROR, "could not extract bytes from encoded string");
	}

	/*
	 * Then convert to server encoding if necessary.
	 *
	 * PyUnicode_AsEncodedString could be used to encode the object directly
	 * in the server encoding, but Python doesn't support all the encodings
	 * that PostgreSQL does (EUC_TW and MULE_INTERNAL). UTF-8 is used as an
	 * intermediary in PLyUnicode_FromString as well.
	 */
	if (FUNC0() != PG_UTF8)
	{
		FUNC4();
		{
			encoded = FUNC11(utf8string,
									   FUNC12(utf8string),
									   PG_UTF8);
		}
		FUNC1();
		{
			FUNC9(bytes);
			FUNC3();
		}
		FUNC2();
	}
	else
		encoded = utf8string;

	/* finally, build a bytes object in the server encoding */
	rv = FUNC7(encoded, FUNC12(encoded));

	/* if pg_any_to_server allocated memory, free it now */
	if (utf8string != encoded)
		FUNC10(encoded);

	FUNC9(bytes);
	return rv;
}