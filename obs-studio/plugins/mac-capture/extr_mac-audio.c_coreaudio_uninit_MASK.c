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
struct coreaudio_data {int au_initialized; int /*<<< orphan*/ * buf_list; int /*<<< orphan*/ * unit; } ;
typedef  int /*<<< orphan*/  OSStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct coreaudio_data*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct coreaudio_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct coreaudio_data*) ; 

__attribute__((used)) static void FUNC6(struct coreaudio_data *ca)
{
	if (!ca->au_initialized)
		return;

	if (ca->unit) {
		FUNC5(ca);

		OSStatus stat = FUNC1(ca->unit);
		FUNC3(stat, ca, "coreaudio_uninit", "uninitialize");

		FUNC4(ca);

		stat = FUNC0(ca->unit);
		FUNC3(stat, ca, "coreaudio_uninit", "dispose");

		ca->unit = NULL;
	}

	ca->au_initialized = false;

	FUNC2(ca->buf_list);
	ca->buf_list = NULL;
}