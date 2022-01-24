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
struct group {char* gr_name; int /*<<< orphan*/  gr_gid; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SECTION_WEB ; 
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct group* FUNC4 (int /*<<< orphan*/ ) ; 
 struct group* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int) ; 

gid_t FUNC7(void) {
    static char *web_group = NULL;
    static gid_t owner_gid = 0;

    if(FUNC6(!web_group)) {
        // getgrgid() is not thread safe,
        // but we have called this function once
        // while single threaded
        struct group *gr = FUNC4(FUNC3());
        web_group = FUNC0(CONFIG_SECTION_WEB, "web files group", (gr)?(gr->gr_name?gr->gr_name:""):"");
        if(!web_group || !*web_group)
            owner_gid = FUNC3();
        else {
            // getgrnam() is not thread safe,
            // but we have called this function once
            // while single threaded
            gr = FUNC5(web_group);
            if(!gr) {
                FUNC2("Group '%s' is not present. Ignoring option.", web_group);
                owner_gid = FUNC3();
            }
            else {
                FUNC1(D_WEB_CLIENT, "Web files group set to %s.", web_group);
                owner_gid = gr->gr_gid;
            }
        }
    }

    return(owner_gid);
}