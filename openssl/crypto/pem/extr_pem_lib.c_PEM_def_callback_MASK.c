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

/* Variables and functions */
 char* FUNC0 () ; 
 int FUNC1 (char*,int,int,char const*,int) ; 
 int MIN_LENGTH ; 
 int /*<<< orphan*/  PEM_F_PEM_DEF_CALLBACK ; 
 int /*<<< orphan*/  PEM_R_PROBLEMS_GETTING_PASSWORD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (char*) ; 

int FUNC6(char *buf, int num, int rwflag, void *userdata)
{
    int i, min_len;
    const char *prompt;

    /* We assume that the user passes a default password as userdata */
    if (userdata) {
        i = FUNC5(userdata);
        i = (i > num) ? num : i;
        FUNC3(buf, userdata, i);
        return i;
    }

    prompt = FUNC0();
    if (prompt == NULL)
        prompt = "Enter PEM pass phrase:";

    /*
     * rwflag == 0 means decryption
     * rwflag == 1 means encryption
     *
     * We assume that for encryption, we want a minimum length, while for
     * decryption, we cannot know any minimum length, so we assume zero.
     */
    min_len = rwflag ? MIN_LENGTH : 0;

    i = FUNC1(buf, min_len, num, prompt, rwflag);
    if (i != 0) {
        FUNC2(PEM_F_PEM_DEF_CALLBACK, PEM_R_PROBLEMS_GETTING_PASSWORD);
        FUNC4(buf, 0, (unsigned int)num);
        return -1;
    }
    return FUNC5(buf);
}