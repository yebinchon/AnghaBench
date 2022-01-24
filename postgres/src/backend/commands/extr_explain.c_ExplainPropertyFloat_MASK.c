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
typedef  int /*<<< orphan*/  ExplainState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int,double) ; 

void
FUNC3(const char *qlabel, const char *unit, double value,
					 int ndigits, ExplainState *es)
{
	char	   *buf;

	buf = FUNC2("%.*f", ndigits, value);
	FUNC0(qlabel, unit, buf, true, es);
	FUNC1(buf);
}