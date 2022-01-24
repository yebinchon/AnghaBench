#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  xy2d; int /*<<< orphan*/  yminusx; int /*<<< orphan*/  yplusx; } ;
typedef  TYPE_1__ ge_precomp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(ge_precomp *t, const ge_precomp *u, uint8_t b)
{
    FUNC0(t->yplusx, u->yplusx, b);
    FUNC0(t->yminusx, u->yminusx, b);
    FUNC0(t->xy2d, u->xy2d, b);
}