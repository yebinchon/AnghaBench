#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int header; } ;
struct TYPE_11__ {char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  JsonPathItem ;
typedef  TYPE_3__ JsonPath ;

/* Variables and functions */
 int JSONPATH_LAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static char *
FUNC5(StringInfo out, JsonPath *in, int estimated_len)
{
	StringInfoData buf;
	JsonPathItem v;

	if (!out)
	{
		out = &buf;
		FUNC2(out);
	}
	FUNC1(out, estimated_len);

	if (!(in->header & JSONPATH_LAX))
		FUNC0(out, "strict ", 7);

	FUNC3(&v, in);
	FUNC4(out, &v, false, true);

	return out->data;
}