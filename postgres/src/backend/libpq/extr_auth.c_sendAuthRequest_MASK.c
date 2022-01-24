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
typedef  int /*<<< orphan*/  int32 ;
typedef  int /*<<< orphan*/  StringInfoData ;
typedef  int /*<<< orphan*/  Port ;
typedef  scalar_t__ AuthRequest ;

/* Variables and functions */
 scalar_t__ AUTH_REQ_OK ; 
 scalar_t__ AUTH_REQ_SASL_FIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(Port *port, AuthRequest areq, const char *extradata, int extralen)
{
	StringInfoData buf;

	FUNC0();

	FUNC1(&buf, 'R');
	FUNC5(&buf, (int32) areq);
	if (extralen > 0)
		FUNC4(&buf, extradata, extralen);

	FUNC2(&buf);

	/*
	 * Flush message so client will see it, except for AUTH_REQ_OK and
	 * AUTH_REQ_SASL_FIN, which need not be sent until we are ready for
	 * queries.
	 */
	if (areq != AUTH_REQ_OK && areq != AUTH_REQ_SASL_FIN)
		FUNC3();

	FUNC0();
}