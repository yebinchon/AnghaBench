#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* ut64 ;
struct TYPE_9__ {int lastsz; void* cur; void* old; } ;
typedef  TYPE_1__ RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char*,void**) ; 
 char* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,void*) ; 

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
			esil->old = s;
			s++;
			esil->cur = s;
			esil->lastsz = bits;
			FUNC7 (esil, s);
			FUNC6 (esil, off);
			ret &= (!!FUNC2 (esil, bits));
		} else {
			ret = false;
		}
	}
	if (!ret) {
		FUNC0 ("esil_mem_inceq_n: invalid parameters");
	}
	FUNC3 (src);
	FUNC3 (off);
	return ret;
}