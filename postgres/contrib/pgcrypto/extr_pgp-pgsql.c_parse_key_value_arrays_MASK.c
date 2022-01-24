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
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_ARRAY_SUBSCRIPT_ERROR ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_NULL_VALUE_NOT_ALLOWED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  TEXTOID ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,char,int /*<<< orphan*/ **,int**,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 

__attribute__((used)) static int
FUNC10(ArrayType *key_array, ArrayType *val_array,
					   char ***p_keys, char ***p_values)
{
	int			nkdims = FUNC0(key_array);
	int			nvdims = FUNC0(val_array);
	char	  **keys,
			  **values;
	Datum	   *key_datums,
			   *val_datums;
	bool	   *key_nulls,
			   *val_nulls;
	int			key_count,
				val_count;
	int			i;

	if (nkdims > 1 || nkdims != nvdims)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
				 FUNC5("wrong number of array subscripts")));
	if (nkdims == 0)
		return 0;

	FUNC2(key_array,
					  TEXTOID, -1, false, 'i',
					  &key_datums, &key_nulls, &key_count);

	FUNC2(val_array,
					  TEXTOID, -1, false, 'i',
					  &val_datums, &val_nulls, &val_count);

	if (key_count != val_count)
		FUNC3(ERROR,
				(FUNC4(ERRCODE_ARRAY_SUBSCRIPT_ERROR),
				 FUNC5("mismatched array dimensions")));

	keys = (char **) FUNC6(sizeof(char *) * key_count);
	values = (char **) FUNC6(sizeof(char *) * val_count);

	for (i = 0; i < key_count; i++)
	{
		char	   *v;

		/* Check that the key doesn't contain anything funny */
		if (key_nulls[i])
			FUNC3(ERROR,
					(FUNC4(ERRCODE_NULL_VALUE_NOT_ALLOWED),
					 FUNC5("null value not allowed for header key")));

		v = FUNC1(key_datums[i]);

		if (!FUNC8(v))
			FUNC3(ERROR,
					(FUNC4(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC5("header key must not contain non-ASCII characters")));
		if (FUNC9(v, ": "))
			FUNC3(ERROR,
					(FUNC4(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC5("header key must not contain \": \"")));
		if (FUNC7(v, '\n'))
			FUNC3(ERROR,
					(FUNC4(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC5("header key must not contain newlines")));
		keys[i] = v;

		/* And the same for the value */
		if (val_nulls[i])
			FUNC3(ERROR,
					(FUNC4(ERRCODE_NULL_VALUE_NOT_ALLOWED),
					 FUNC5("null value not allowed for header value")));

		v = FUNC1(val_datums[i]);

		if (!FUNC8(v))
			FUNC3(ERROR,
					(FUNC4(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC5("header value must not contain non-ASCII characters")));
		if (FUNC7(v, '\n'))
			FUNC3(ERROR,
					(FUNC4(ERRCODE_INVALID_PARAMETER_VALUE),
					 FUNC5("header value must not contain newlines")));

		values[i] = v;
	}

	*p_keys = keys;
	*p_values = values;
	return key_count;
}