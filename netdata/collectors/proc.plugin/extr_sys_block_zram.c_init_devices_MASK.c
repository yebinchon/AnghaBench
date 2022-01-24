#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_rdev; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  procfile ;
struct TYPE_4__ {int /*<<< orphan*/ * file; } ;
typedef  TYPE_1__ ZRAM_DEVICE ;
typedef  int /*<<< orphan*/  DIR ;
typedef  int /*<<< orphan*/  DICTIONARY ;

/* Variables and functions */
 int /*<<< orphan*/  FILENAME_MAX ; 
 int /*<<< orphan*/  PROCFILE_FLAG_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 struct dirent* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,struct stat*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(DICTIONARY *devices, unsigned int zram_id, int update_every) {
    int count = 0;
    DIR *dir = FUNC6("/dev");
    struct dirent *de;
    struct stat st;
    char filename[FILENAME_MAX + 1];
    procfile *ff = NULL;
    ZRAM_DEVICE device;

    if (FUNC12(!dir))
        return 0;
    while ((de = FUNC8(dir)))
    {
        FUNC9(filename, FILENAME_MAX, "/dev/%s", de->d_name);
        if (FUNC12(FUNC10(filename, &st) != 0))
        {
            FUNC2("ZRAM : Unable to stat %s: %s", filename, FUNC11(errno));
            continue;
        }
        if (FUNC5(st.st_rdev) == zram_id)
        {
            FUNC3("ZRAM : Found device %s", filename);
            FUNC9(filename, FILENAME_MAX, "/sys/block/%s/mm_stat", de->d_name);
            ff = FUNC7(filename, " \t:", PROCFILE_FLAG_DEFAULT);
            if (ff == NULL)
            {
                FUNC2("ZRAM : Failed to open %s: %s", filename, FUNC11(errno));
                continue;
            }
            device.file = ff;
            FUNC4(de->d_name, &device, update_every);
            FUNC1(devices, de->d_name, &device, sizeof(ZRAM_DEVICE));
            count++;
        }
    }
    FUNC0(dir);
    return count;
}