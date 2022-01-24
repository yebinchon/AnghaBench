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
	ut64 s, d;
	char *dst = FUNC5 (esil);  //save the dst-addr
	char *src0 = FUNC5 (esil); //get the src
	char *src1 = NULL;
	if (src0 && FUNC4 (esil, src0, &s)) { 	//get the src
		FUNC6 (esil, dst);			//push the dst-addr
		ret = (!!FUNC1 (esil, bits));		//read
		src1 = FUNC5 (esil);			//get the old dst-value
		if (src1 && FUNC4 (esil, src1, &d)) { //get the old dst-value
			d |= s;					//calculate the new dst-value
			FUNC7 (esil, d);		//push the new dst-value
			FUNC6 (esil, dst);		//push the dst-addr
			ret &= (!!FUNC2 (esil, bits));	//write
		} else {
			ret = false;
		}
	}
	if (!ret) {
		FUNC0 ("esil_mem_oreq_n: invalid parameters");
	}
	FUNC3 (dst);
	FUNC3 (src0);
	FUNC3 (src1);
	return ret;
}