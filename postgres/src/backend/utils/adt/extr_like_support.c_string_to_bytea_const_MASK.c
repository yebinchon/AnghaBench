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
typedef  int /*<<< orphan*/  bytea ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Const ;

/* Variables and functions */
 int /*<<< orphan*/  BYTEAOID ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ VARHDRSZ ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 

__attribute__((used)) static Const *
FUNC6(const char *str, size_t str_len)
{
	bytea	   *bstr = FUNC5(VARHDRSZ + str_len);
	Datum		conval;

	FUNC4(FUNC2(bstr), str, str_len);
	FUNC1(bstr, VARHDRSZ + str_len);
	conval = FUNC0(bstr);

	return FUNC3(BYTEAOID, -1, InvalidOid, -1, conval, false, false);
}