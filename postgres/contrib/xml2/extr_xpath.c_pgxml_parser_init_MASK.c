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
typedef  int /*<<< orphan*/  PgXmlStrictness ;
typedef  int /*<<< orphan*/  PgXmlErrorContext ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int xmlLoadExtDtdDefaultValue ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

PgXmlErrorContext *
FUNC3(PgXmlStrictness strictness)
{
	PgXmlErrorContext *xmlerrcxt;

	/* Set up error handling (we share the core's error handler) */
	xmlerrcxt = FUNC0(strictness);

	/* Note: we're assuming an elog cannot be thrown by the following calls */

	/* Initialize libxml */
	FUNC1();

	FUNC2(1);
	xmlLoadExtDtdDefaultValue = 1;

	return xmlerrcxt;
}