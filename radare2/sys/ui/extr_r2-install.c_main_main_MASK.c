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
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  Main ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ***) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 

void FUNC6 (gchar** args, int args_length1) {
	Main* _tmp0_;
	Main* _tmp1_;
	Main* m;
	FUNC2 (&args_length1, &args);
	_tmp0_ = FUNC5 ();
	_tmp1_ = FUNC1 (_tmp0_);
	m = _tmp1_;
	FUNC4 ((GtkWidget*) m);
	FUNC3 ();
	FUNC0 (m);
}