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
typedef  int /*<<< orphan*/ * PSECURITY_DESCRIPTOR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  SDDL_REVISION_1 ; 
 char* FUNC2 () ; 
 char* FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ *,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static PSECURITY_DESCRIPTOR FUNC6(void)
{
    char *user_sid = FUNC3();
    char *integrity_sid = FUNC2();
    if (!user_sid || !integrity_sid)
        return NULL;

    char *sddl = FUNC4(NULL,
        "O:%s"                 // Set the owner to user_sid
        "D:(A;;GRGW;;;%s)"     // Grant GENERIC_{READ,WRITE} access to user_sid
        "S:(ML;;NRNWNX;;;%s)", // Disallow read, write and execute permissions
                               // to integrity levels below integrity_sid
        user_sid, user_sid, integrity_sid);
    FUNC1(user_sid);
    FUNC1(integrity_sid);

    PSECURITY_DESCRIPTOR sd = NULL;
    FUNC0(sddl, SDDL_REVISION_1,
        &sd, NULL);
    FUNC5(sddl);

    return sd;
}