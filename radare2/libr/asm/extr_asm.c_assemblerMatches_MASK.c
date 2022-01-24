#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* cur; int /*<<< orphan*/  bits; } ;
struct TYPE_8__ {int /*<<< orphan*/  arch; int /*<<< orphan*/  assemble; } ;
struct TYPE_7__ {int /*<<< orphan*/  arch; } ;
typedef  TYPE_2__ RAsmPlugin ;
typedef  TYPE_3__ RAsm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(RAsm *a, RAsmPlugin *h) {
	if (!a || !h->arch || !h->assemble || !FUNC0 (h, a->bits)) {
		return false;
	}
	return (!FUNC2 (a->cur->arch, h->arch, FUNC1 (a->cur->arch)));
}