#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  header; } ;
struct TYPE_12__ {scalar_t__ lax; int /*<<< orphan*/  expr; } ;
struct TYPE_11__ {int /*<<< orphan*/  len; scalar_t__ data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ JsonPathParseResult ;
typedef  TYPE_3__ JsonPath ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  JSONPATH_HDRSZ ; 
 int /*<<< orphan*/  JSONPATH_LAX ; 
 int /*<<< orphan*/  JSONPATH_VERSION ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_2__* FUNC9 (char*,int) ; 

__attribute__((used)) static Datum
FUNC10(char *in, int len)
{
	JsonPathParseResult *jsonpath = FUNC9(in, len);
	JsonPath   *res;
	StringInfoData buf;

	FUNC8(&buf);
	FUNC3(&buf, 4 * len /* estimation */ );

	FUNC2(&buf, JSONPATH_HDRSZ);

	if (!jsonpath)
		FUNC4(ERROR,
				(FUNC5(ERRCODE_INVALID_TEXT_REPRESENTATION),
				 FUNC6("invalid input syntax for type %s: \"%s\"", "jsonpath",
						in)));

	FUNC7(&buf, jsonpath->expr, 0, false);

	res = (JsonPath *) buf.data;
	FUNC1(res, buf.len);
	res->header = JSONPATH_VERSION;
	if (jsonpath->lax)
		res->header |= JSONPATH_LAX;

	FUNC0(res);
}