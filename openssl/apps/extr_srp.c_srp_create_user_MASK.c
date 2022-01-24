#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  password ;
struct TYPE_3__ {char* prompt_info; char* password; } ;
typedef  TYPE_1__ PW_CB_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 char* FUNC2 (char*,char*,char**,char**,char*,char*) ; 
 int /*<<< orphan*/  bio_err ; 
 int FUNC3 (char*,int,int,TYPE_1__*) ; 

__attribute__((used)) static char *FUNC4(char *user, char **srp_verifier,
                             char **srp_usersalt, char *g, char *N,
                             char *passout, int verbose)
{
    char password[1025];
    PW_CB_DATA cb_tmp;
    char *gNid = NULL;
    char *salt = NULL;
    int len;
    cb_tmp.prompt_info = user;
    cb_tmp.password = passout;

    len = FUNC3(password, sizeof(password)-1, 1, &cb_tmp);
    if (len > 0) {
        password[len] = 0;
        if (verbose)
            FUNC0(bio_err, "Creating\n user=\"%s\"\n g=\"%s\"\n N=\"%s\"\n",
                       user, g, N);
        if ((gNid = FUNC2(user, password, &salt,
                                        srp_verifier, N, g)) == NULL) {
            FUNC0(bio_err, "Internal error creating SRP verifier\n");
        } else {
            *srp_usersalt = salt;
        }
        FUNC1(password, len);
        if (verbose > 1)
            FUNC0(bio_err, "gNid=%s salt =\"%s\"\n verifier =\"%s\"\n",
                       gNid, salt, *srp_verifier);

    }
    return gNid;
}