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
typedef  int /*<<< orphan*/  usec_t ;
typedef  int /*<<< orphan*/  procfile ;
typedef  int /*<<< orphan*/  DICTIONARY ;

/* Variables and functions */
 int /*<<< orphan*/  DICTIONARY_FLAG_SINGLE_THREADED ; 
 int /*<<< orphan*/  PROCFILE_FLAG_DEFAULT ; 
 int /*<<< orphan*/  collect_first_zram_metrics ; 
 int /*<<< orphan*/  collect_zram_metrics ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(int update_every, usec_t dt) {
    (void)dt;
    static procfile *ff = NULL;
    static DICTIONARY *devices = NULL;
    static int initialized = 0;
    static int device_count = 0;
    int zram_id = -1;
    if (FUNC8(!initialized))
    {
        initialized = 1;
        ff = FUNC5("/proc/devices", " \t:", PROCFILE_FLAG_DEFAULT);
        if (ff == NULL)
        {
            FUNC2("Cannot read /proc/devices");
            return 1;
        }
        ff = FUNC6(ff);
        if (!ff)
            return 1;
        zram_id = FUNC7(ff);
        if (zram_id == -1)
        {
            if (ff != NULL)
                FUNC4(ff);
            return 1;
        }
        FUNC4(ff);

        devices = FUNC0(DICTIONARY_FLAG_SINGLE_THREADED);
        device_count = FUNC3(devices, (unsigned int)zram_id, update_every);
        if (device_count < 1)
            return 1;
        FUNC1(devices, collect_first_zram_metrics, devices);
    }
    else
    {
        if (FUNC8(device_count < 1))
            return 1;
        FUNC1(devices, collect_zram_metrics, devices);
    }
    return 0;
}