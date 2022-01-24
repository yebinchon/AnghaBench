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
typedef  int /*<<< orphan*/  uint ;
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP_IMPORT_STAT_DIR ; 
 int /*<<< orphan*/  MP_IMPORT_STAT_FILE ; 
 int /*<<< orphan*/  MP_IMPORT_STAT_NO_EXIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 

uint FUNC3(const char *path) {
    struct stat st;
    if (FUNC2(path, &st) == 0) {
        if (FUNC0(st.st_mode)) {
            return MP_IMPORT_STAT_DIR;
        } else if (FUNC1(st.st_mode)) {
            return MP_IMPORT_STAT_FILE;
        }
    }
    return MP_IMPORT_STAT_NO_EXIST;
}