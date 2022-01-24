#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int header; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  JsonPathItem ;
typedef  TYPE_1__ JsonPath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int JSONPATH_LAX ; 
 int JSONPATH_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(JsonPathItem *v, JsonPath *js)
{
	FUNC0((js->header & ~JSONPATH_LAX) == JSONPATH_VERSION);
	FUNC1(v, js->data, 0);
}