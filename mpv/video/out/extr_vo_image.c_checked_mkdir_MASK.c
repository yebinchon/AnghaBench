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
struct vo {int dummy; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  FUNC0 (struct vo*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,char*,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (char const*,int) ; 
 char* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char const*,struct stat*) ; 

__attribute__((used)) static bool FUNC6(struct vo *vo, const char *buf)
{
    FUNC1(vo, "Creating output directory '%s'...\n", buf);
    if (FUNC3(buf, 0755) < 0) {
        char *errstr = FUNC4(errno);
        if (errno == EEXIST) {
            struct stat stat_p;
            if (FUNC5(buf, &stat_p ) == 0 && FUNC2(stat_p.st_mode))
                return true;
        }
        FUNC0(vo, "Error creating output directory: %s\n", errstr);
        return false;
    }
    return true;
}