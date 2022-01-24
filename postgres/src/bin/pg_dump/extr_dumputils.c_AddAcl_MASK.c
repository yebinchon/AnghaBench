#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ len; } ;
typedef  TYPE_1__* PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 

__attribute__((used)) static void
FUNC3(PQExpBuffer aclbuf, const char *keyword, const char *subname)
{
	if (aclbuf->len > 0)
		FUNC1(aclbuf, ',');
	FUNC2(aclbuf, keyword);
	if (subname)
		FUNC0(aclbuf, "(%s)", subname);
}