#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* directory; } ;
struct TYPE_4__ {TYPE_1__ rotate; } ;
struct Masscan {TYPE_2__ output; scalar_t__ echo; scalar_t__ echo_all; } ;

/* Variables and functions */
 int CONF_OK ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct Masscan *masscan, const char *name, const char *value)
{
    char *p;
    FUNC0(name);
    if (masscan->echo) {
        if (FUNC2(masscan->output.rotate.directory, ".",2) != 0 || masscan->echo_all) {
            FUNC1(masscan->echo, "rotate-dir = %s\n", masscan->output.rotate.directory);
        }
        return 0;
    }
    FUNC3(   masscan->output.rotate.directory,
             sizeof(masscan->output.rotate.directory),
             value);
    /* strip trailing slashes */
    p = masscan->output.rotate.directory;
    while (*p && (p[FUNC4(p)-1] == '/' || p[FUNC4(p)-1] == '/'))
        p[FUNC4(p)-1] = '\0';
    return CONF_OK;
}