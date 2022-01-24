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
typedef  int /*<<< orphan*/  PlaceHolderInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ph_eval_at ; 
 int /*<<< orphan*/  ph_lateral ; 
 int /*<<< orphan*/  ph_needed ; 
 int /*<<< orphan*/  ph_var ; 
 int /*<<< orphan*/  ph_width ; 
 int /*<<< orphan*/  phid ; 

__attribute__((used)) static bool
FUNC3(const PlaceHolderInfo *a, const PlaceHolderInfo *b)
{
	FUNC2(phid);
	FUNC1(ph_var); /* should be redundant */
	FUNC0(ph_eval_at);
	FUNC0(ph_lateral);
	FUNC0(ph_needed);
	FUNC2(ph_width);

	return true;
}