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
typedef  scalar_t__ ut64 ;
typedef  scalar_t__ ut16 ;
struct TYPE_3__ {int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ RBinFile ;

/* Variables and functions */
 scalar_t__ UT16_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ut64 FUNC1(RBinFile *bf) {
	ut16 base = FUNC0 (bf->buf, 0);
	return base != UT16_MAX ? base : 0;
}