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
typedef  int /*<<< orphan*/  uid_t ;
struct passwd {char* pw_name; int /*<<< orphan*/  pw_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SECTION_WEB ; 
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct passwd* FUNC4 (char*) ; 
 struct passwd* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

uid_t FUNC7(void) {
    static char *web_owner = NULL;
    static uid_t owner_uid = 0;

    if(FUNC6(!web_owner)) {
        // getpwuid() is not thread safe,
        // but we have called this function once
        // while single threaded
        struct passwd *pw = FUNC5(FUNC3());
        web_owner = FUNC0(CONFIG_SECTION_WEB, "web files owner", (pw)?(pw->pw_name?pw->pw_name:""):"");
        if(!web_owner || !*web_owner)
            owner_uid = FUNC3();
        else {
            // getpwnam() is not thread safe,
            // but we have called this function once
            // while single threaded
            pw = FUNC4(web_owner);
            if(!pw) {
                FUNC2("User '%s' is not present. Ignoring option.", web_owner);
                owner_uid = FUNC3();
            }
            else {
                FUNC1(D_WEB_CLIENT, "Web files owner set to %s.", web_owner);
                owner_uid = pw->pw_uid;
            }
        }
    }

    return(owner_uid);
}