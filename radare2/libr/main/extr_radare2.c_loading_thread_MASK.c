#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  breaked; } ;
typedef  int /*<<< orphan*/  RThreadFunctionRet ;
typedef  TYPE_1__ RThread ;

/* Variables and functions */
 int /*<<< orphan*/  R_TH_STOP ; 
 int /*<<< orphan*/  FUNC0 (char*,char const,char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static RThreadFunctionRet FUNC2(RThread *th) {
	const char *tok = "\\|/-";
	int i = 0;
	if (th) {
		while (!th->breaked) {
			FUNC0 ("%c] Loading..%c     \r[", tok[i%4], "."[i%2]);
			FUNC1 (100000);
			i++;
		}
	}
	return R_TH_STOP;
}