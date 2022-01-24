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
typedef  int /*<<< orphan*/  ut64 ;
struct TYPE_5__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ RInterval ;

/* Variables and functions */
 int FUNC0 (TYPE_1__,TYPE_1__) ; 

__attribute__((used)) static inline bool FUNC1(RInterval itv, ut64 addr, ut64 size) {
	RInterval rai = {addr, size};
	return FUNC0 (itv, rai);
}