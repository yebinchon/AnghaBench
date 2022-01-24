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
typedef  size_t ut32 ;
struct TYPE_5__ {size_t numOfChildren; struct TYPE_5__* Children; struct TYPE_5__* szKey; } ;
typedef  TYPE_1__ VarFileInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 

__attribute__((used)) static void FUNC2(VarFileInfo* varFileInfo) {
	if (varFileInfo) {
		FUNC0 (varFileInfo->szKey);
		if (varFileInfo->Children) {
			ut32 children = 0;
			for (; children < varFileInfo->numOfChildren; children++) {
				FUNC1 (varFileInfo->Children[children]);
			}
			FUNC0 (varFileInfo->Children);
		}
		FUNC0 (varFileInfo);
	}
}