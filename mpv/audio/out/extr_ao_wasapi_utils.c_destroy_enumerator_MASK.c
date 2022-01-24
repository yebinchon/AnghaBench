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
struct enumerator {int /*<<< orphan*/  pEnumerator; int /*<<< orphan*/  pDevices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct enumerator*) ; 

__attribute__((used)) static void FUNC2(struct enumerator *e)
{
    if (!e)
        return;
    FUNC0(e->pDevices);
    FUNC0(e->pEnumerator);
    FUNC1(e);
}