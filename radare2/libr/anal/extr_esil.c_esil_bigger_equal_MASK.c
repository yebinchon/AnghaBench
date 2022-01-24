#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ut64 ;
struct TYPE_9__ {int lastsz; TYPE_1__* anal; scalar_t__ cur; scalar_t__ old; } ;
struct TYPE_8__ {int /*<<< orphan*/  reg; } ;
typedef  TYPE_2__ RAnalEsil ;

/* Variables and functions */
 void* FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char*,scalar_t__*) ; 
 char* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC6 (scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static bool FUNC7(RAnalEsil *esil) { // 'dst >= src' => 'src,dst,>='
	ut64 num, num2;
	bool ret = false;
	char *dst = FUNC3 (esil);
	char *src = FUNC3 (esil);
	if (dst && FUNC2 (esil, dst, &num)) {
		if (src && FUNC2 (esil, src, &num2)) {
			esil->old = num;
			esil->cur = num - num2;
			ret = true;
			if (FUNC5 (esil->anal->reg, dst, -1)) {
				esil->lastsz = FUNC0 (esil, dst);
			} else if (FUNC5 (esil->anal->reg, src, -1)) {
				esil->lastsz = FUNC0 (esil, src);
			} else {
				// default size is set to 64 as internally operands are ut64
				esil->lastsz = 64;
			}
			FUNC4 (esil, (num == num2) |
			                           FUNC6 (num, num2, esil->lastsz));
		}
	}
	FUNC1 (dst);
	FUNC1 (src);
	return ret;
}