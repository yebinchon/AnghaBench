#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  trgm ;
struct TYPE_5__ {int /*<<< orphan*/  flag; } ;
typedef  TYPE_1__ TRGM ;

/* Variables and functions */
 int /*<<< orphan*/  ARRKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRGMHDRSIZE ; 
 int /*<<< orphan*/  comp_trgm ; 
 int FUNC3 (scalar_t__,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__,int,int,int /*<<< orphan*/ ) ; 

TRGM *
FUNC8(char *str, int slen)
{
	TRGM	   *trg;
	int			len;

	FUNC5(slen);

	trg = (TRGM *) FUNC4(TRGMHDRSIZE + sizeof(trgm) * (slen / 2 + 1) * 3);
	trg->flag = ARRKEY;

	len = FUNC3(FUNC1(trg), str, slen, NULL);
	FUNC2(trg, FUNC0(ARRKEY, len));

	if (len == 0)
		return trg;

	/*
	 * Make trigrams unique.
	 */
	if (len > 1)
	{
		FUNC6((void *) FUNC1(trg), len, sizeof(trgm), comp_trgm);
		len = FUNC7(FUNC1(trg), len, sizeof(trgm), comp_trgm);
	}

	FUNC2(trg, FUNC0(ARRKEY, len));

	return trg;
}