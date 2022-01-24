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
struct TYPE_3__ {int /*<<< orphan*/  class_id; } ;
typedef  int /*<<< orphan*/  RBinDexObj ;
typedef  TYPE_1__ RBinDexClass ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ simplifiedDemangling ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(RBinDexObj *bin, RBinDexClass *c) {
	char *s = FUNC0 (bin, c->class_id);
	if (simplifiedDemangling) {
		FUNC2 (s);
		if (*s == 'L') {
			FUNC1 (s, s + 1);
		}
	}
	return s;
}