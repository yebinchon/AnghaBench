#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  sg_name_u; int /*<<< orphan*/  sg_name; } ;
struct TYPE_3__ {size_t ga_len; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 TYPE_1__ highlight_ga ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2()
{
    --highlight_ga.ga_len;
    FUNC1(FUNC0()[highlight_ga.ga_len].sg_name);
    FUNC1(FUNC0()[highlight_ga.ga_len].sg_name_u);
}