#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int row; int col; } ;
struct TYPE_5__ {scalar_t__ time; TYPE_1__ key; } ;
typedef  TYPE_2__ keyevent_t ;

/* Variables and functions */

__attribute__((used)) static inline bool FUNC0(keyevent_t event) { return event.time == 0 || (event.key.row == 255 && event.key.col == 255); }