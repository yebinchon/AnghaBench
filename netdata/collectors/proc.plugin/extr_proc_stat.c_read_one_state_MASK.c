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
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ CONFIG_BOOLEAN_YES ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ keep_cpuidle_fds_open ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(char *buf, const char *filename, int *fd) {
    ssize_t ret = FUNC3(*fd, buf, 50);

    if(FUNC4(ret <= 0)) {
        // cannot read that file
        FUNC1("Cannot read file '%s'", filename);
        FUNC0(*fd);
        *fd = -1;
        return 0;
    }
    else {
        // successful read

        // terminate the buffer
        buf[ret - 1] = '\0';

        if(FUNC4(keep_cpuidle_fds_open != CONFIG_BOOLEAN_YES)) {
            FUNC0(*fd);
            *fd = -1;
        }
        else if(FUNC2(*fd, 0, SEEK_SET) == -1) {
            FUNC1("Cannot seek in file '%s'", filename);
            FUNC0(*fd);
            *fd = -1;
        }
    }

    return 1;
}