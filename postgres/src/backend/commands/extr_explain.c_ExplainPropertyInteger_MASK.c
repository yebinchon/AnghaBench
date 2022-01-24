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
typedef  int /*<<< orphan*/  int64 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  ExplainState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*,char*,int,int /*<<< orphan*/ *) ; 
 char* INT64_FORMAT ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ ) ; 

void
FUNC2(const char *qlabel, const char *unit, int64 value,
					   ExplainState *es)
{
	char		buf[32];

	FUNC1(buf, sizeof(buf), INT64_FORMAT, value);
	FUNC0(qlabel, unit, buf, true, es);
}