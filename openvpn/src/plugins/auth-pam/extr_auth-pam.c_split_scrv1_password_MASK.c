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
struct user_pass {char* password; char* response; int /*<<< orphan*/  verb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*,int const) ; 

__attribute__((used)) static void
FUNC10(struct user_pass *up)
{
    const int skip = FUNC8("SCRV1:");
    if (FUNC9(up->password, "SCRV1:", skip) != 0)
    {
        return;
    }

    char *tmp = FUNC7(up->password);
    if (!tmp)
    {
        FUNC1(stderr, "AUTH-PAM: out of memory parsing static challenge password\n");
        goto out;
    }

    char *pass = tmp + skip;
    char *resp = FUNC5(pass, ':');
    if (!resp) /* string not in SCRV1:xx:yy format */
    {
        goto out;
    }
    *resp++ = '\0';

    int n = FUNC3(pass, up->password, sizeof(up->password)-1);
    if (n >= 0)
    {
        up->password[n] = '\0';
        n = FUNC3(resp, up->response, sizeof(up->response)-1);
        if (n >= 0)
        {
            up->response[n] = '\0';
            if (FUNC0(up->verb))
            {
                FUNC1(stderr, "AUTH-PAM: BACKGROUND: parsed static challenge password\n");
            }
            goto out;
        }
    }

    /* decode error: reinstate original value of up->password and return */
    FUNC4(up->password, sizeof(up->password));
    FUNC4(up->response, sizeof(up->response));
    FUNC6(up->password, tmp); /* tmp is guaranteed to fit in up->password */

    FUNC1(stderr, "AUTH-PAM: base64 decode error while parsing static challenge password\n");

out:
    if (tmp)
    {
        FUNC4(tmp, FUNC8(tmp));
        FUNC2(tmp);
    }
}