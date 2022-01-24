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
struct TYPE_3__ {int dwSize; int /*<<< orphan*/  dwFadeTime; int /*<<< orphan*/  dwFadeLevel; int /*<<< orphan*/  dwAttackTime; int /*<<< orphan*/  dwAttackLevel; } ;
typedef  TYPE_1__* LPCDIENVELOPE ;
typedef  int /*<<< orphan*/  DIENVELOPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static void FUNC2(LPCDIENVELOPE env)
{
    if (env->dwSize != sizeof(DIENVELOPE)) {
        FUNC1("Non-standard DIENVELOPE structure size %d.\n", env->dwSize);
    }
    FUNC0("Envelope has attack (level: %d time: %d), fade (level: %d time: %d)\n",
          env->dwAttackLevel, env->dwAttackTime, env->dwFadeLevel, env->dwFadeTime);
}