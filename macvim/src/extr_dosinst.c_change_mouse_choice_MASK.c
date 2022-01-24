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
 size_t mouse_choice ; 
 int /*<<< orphan*/ * mouse_choices ; 
 int /*<<< orphan*/  mouse_text ; 

__attribute__((used)) static void
FUNC3(int idx)
{
    mouse_choice = FUNC2(mouse_choices, FUNC0(mouse_choices));
    FUNC1(idx, mouse_text, mouse_choices[mouse_choice]);
}