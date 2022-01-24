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
typedef  int /*<<< orphan*/  TrgmStateKey ;
struct TYPE_3__ {int /*<<< orphan*/  keysQueue; } ;
typedef  TYPE_1__ TrgmNFA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(TrgmNFA *trgmNFA, TrgmStateKey *key)
{
	TrgmStateKey *keyCopy = (TrgmStateKey *) FUNC2(sizeof(TrgmStateKey));

	FUNC1(keyCopy, key, sizeof(TrgmStateKey));
	trgmNFA->keysQueue = FUNC0(trgmNFA->keysQueue, keyCopy);
}