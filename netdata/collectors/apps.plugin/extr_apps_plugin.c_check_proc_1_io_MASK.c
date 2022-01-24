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
typedef  int /*<<< orphan*/  procfile ;

/* Variables and functions */
 int /*<<< orphan*/  PROCFILE_FLAG_NO_ERROR_ON_FILE_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3() {
    int ret = 0;

    procfile *ff = FUNC1("/proc/1/io", NULL, PROCFILE_FLAG_NO_ERROR_ON_FILE_IO);
    if(!ff) goto cleanup;

    ff = FUNC2(ff);
    if(!ff) goto cleanup;

    ret = 1;

cleanup:
    FUNC0(ff);
    return ret;
}