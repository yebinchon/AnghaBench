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
typedef  int /*<<< orphan*/  int16 ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Size
FUNC6(Size data_length, Datum val, bool typbyval, char typalign,
				   int16 typlen, char typstorage)
{
	if (FUNC1(typlen, typstorage) &&
		FUNC2(FUNC0(val)))
	{
		/*
		 * we're anticipating converting to a short varlena header, so adjust
		 * length and don't count any alignment
		 */
		data_length += FUNC3(FUNC0(val));
	}
	else
	{
		data_length = FUNC5(data_length, typalign, typlen, val);
		data_length = FUNC4(data_length, typlen, val);
	}

	return data_length;
}