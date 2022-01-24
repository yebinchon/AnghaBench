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
struct TYPE_5__ {int /*<<< orphan*/  AllJavaBinObjs; } ;
typedef  TYPE_1__ RBinJavaObj ;

/* Variables and functions */
 int /*<<< orphan*/  DB ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(RBinJavaObj *bin) {
	if (!bin) {
		return;
	}
	char *jvcname = FUNC2 (bin);
	FUNC0 (jvcname, bin);
	bin->AllJavaBinObjs = DB;
	FUNC1 (jvcname);
}