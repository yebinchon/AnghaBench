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
typedef  scalar_t__ int32 ;
typedef  int /*<<< orphan*/  Pairs ;
typedef  int /*<<< orphan*/  HStore ;
typedef  int /*<<< orphan*/  HEntry ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (scalar_t__) ; 

HStore *
FUNC8(Pairs *pairs, int32 pcount, int32 buflen)
{
	HStore	   *out;
	HEntry	   *entry;
	char	   *ptr;
	char	   *buf;
	int32		len;
	int32		i;

	len = FUNC1(pcount, buflen);
	out = FUNC7(len);
	FUNC5(out, len);
	FUNC4(out, pcount);

	if (pcount == 0)
		return out;

	entry = FUNC0(out);
	buf = ptr = FUNC6(out);

	for (i = 0; i < pcount; i++)
		FUNC2(entry, buf, ptr, pairs[i]);

	FUNC3(out, pcount, buf, ptr);

	return out;
}