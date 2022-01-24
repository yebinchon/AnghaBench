#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* phar; } ;
typedef  TYPE_1__ phar_entry_data ;
struct TYPE_8__ {int /*<<< orphan*/  fname_len; int /*<<< orphan*/  fname; } ;
typedef  TYPE_2__ phar_archive_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  phar_ce_PharException ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,char*,int,char**,int) ; 
 int /*<<< orphan*/  spl_ce_BadMethodCallException ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static void FUNC5(phar_archive_data **pphar, char *dirname, size_t dirname_len)
{
	char *error;
	phar_entry_data *data;

	if (!(data = FUNC3((*pphar)->fname, (*pphar)->fname_len, dirname, dirname_len, "w+b", 2, &error, 1))) {
		if (error) {
			FUNC4(spl_ce_BadMethodCallException, 0, "Directory %s does not exist and cannot be created: %s", dirname, error);
			FUNC0(error);
		} else {
			FUNC4(spl_ce_BadMethodCallException, 0, "Directory %s does not exist and cannot be created", dirname);
		}

		return;
	} else {
		if (error) {
			FUNC0(error);
		}

		/* check for copy on write */
		if (data->phar != *pphar) {
			*pphar = data->phar;
		}
		FUNC1(data);
		FUNC2(*pphar, 0, 0, 0, &error);

		if (error) {
			FUNC4(phar_ce_PharException, 0, "%s", error);
			FUNC0(error);
		}
	}
}