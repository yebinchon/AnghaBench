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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t remap_choice ; 
 int /*<<< orphan*/ * remap_choices ; 
 int /*<<< orphan*/  remap_text ; 

__attribute__((used)) static void
FUNC3(int idx)
{
    remap_choice = FUNC2(remap_choices, FUNC0(remap_choices));
    FUNC1(idx, remap_text, remap_choices[remap_choice]);
}