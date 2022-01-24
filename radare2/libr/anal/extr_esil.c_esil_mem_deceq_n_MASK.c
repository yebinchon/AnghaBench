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
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(RAnalEsil *esil, int bits) {
	bool ret = false;
	ut64 s;
	char *off = FUNC5 (esil);
	char *src = NULL;
	if (off) {
		FUNC6 (esil, off);
		ret = (!!FUNC1 (esil, bits));
		src = FUNC5 (esil);
		if (src && FUNC4 (esil, src, &s)) {
			s--;
			FUNC7 (esil, s);
			FUNC6 (esil, off);
			ret &= (!!FUNC2 (esil, bits));
		} else {
			ret = false;
		}
	}
	if (!ret) {
		FUNC0 ("esil_mem_deceq_n: invalid parameters");
	}
	FUNC3 (src);
	FUNC3 (off);
	return ret;
}