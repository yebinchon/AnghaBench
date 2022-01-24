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
struct TYPE_3__ {int /*<<< orphan*/  error; int /*<<< orphan*/ * umsgf; int /*<<< orphan*/ * arg_types; int /*<<< orphan*/ * orig_format; } ;
typedef  TYPE_1__ msgformat_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(msgformat_data* mf_data)
{
	if (!mf_data)
		return;

	if (mf_data->umsgf)
		FUNC2(mf_data->umsgf);

	if (mf_data->orig_format) {
		FUNC0(mf_data->orig_format);
		mf_data->orig_format = NULL;
	}

	if (mf_data->arg_types) {
		FUNC3(mf_data->arg_types);
		FUNC0(mf_data->arg_types);
		mf_data->arg_types = NULL;
	}

	mf_data->umsgf = NULL;
	FUNC1(&mf_data->error);
}