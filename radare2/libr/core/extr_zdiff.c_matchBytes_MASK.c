#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* bytes; } ;
struct TYPE_5__ {scalar_t__ size; int /*<<< orphan*/  bytes; } ;
typedef  TYPE_2__ RSignItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool FUNC1(RSignItem *a, RSignItem *b) {
	if (a->bytes && b->bytes) {
		if (a->bytes->size == b->bytes->size) {
			return !FUNC0 (a->bytes->bytes, b->bytes->bytes, b->bytes->size);
		}
	}
	return false;
}