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
typedef  int /*<<< orphan*/  zval ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void
FUNC9(char *response, zval *z_ret)
{
    char *p, *lpos, *kpos = NULL, *vpos = NULL, *p2, *key, *value;
    int klen = 0, done = 0, is_numeric;
    zval z_sub_result;

    /* Allocate for response and our user */
    FUNC4(z_ret);
    FUNC4(&z_sub_result);

    // Pointers for parsing
    p = response;
    lpos = response;

    /* While we've got more to parse */
    while(!done) {
        /* What character are we on */
        switch(*p) {
            /* We're done */
            case '\0':
                done = 1;
                break;
            /* \n, ' ' mean we can pull a k/v pair */
            case '\n':
            case ' ':
                /* Grab our value */
                vpos = lpos;

                /* There is some communication error or Redis bug if we don't
                   have a key and value, but check anyway. */
                if(kpos && vpos) {
                    /* Allocate, copy in our key */
                    key = FUNC7(kpos, klen);

                    /* Allocate, copy in our value */
                    value = FUNC7(lpos, p - lpos);

                    /* Treat numbers as numbers, strings as strings */
                    is_numeric = 1;
                    for(p2 = value; *p2; ++p2) {
                        if(*p2 < '0' || *p2 > '9') {
                            is_numeric = 0;
                            break;
                        }
                    }

                    /* Add as a long or string, depending */
                    if(is_numeric == 1) {
                        FUNC1(&z_sub_result, key, FUNC5(value));
                    } else {
                        FUNC2(&z_sub_result, key, value);
                    }
                    FUNC6(value);
                    // If we hit a '\n', then we can add this user to our list
                    if(*p == '\n') {
                        /* Add our user */
                        FUNC3(z_ret, &z_sub_result);

                        /* If we have another user, make another one */
                        if(*(p+1) != '\0') {
                            FUNC4(&z_sub_result);
                        }
                    }

                    // Free our key
                    FUNC6(key);
                } else {
                    // Something is wrong
                    FUNC8(z_ret);
                    FUNC0(z_ret, 0);
                    return;
                }

                /* Move forward */
                lpos = p + 1;

                break;
            /* We can pull the key and null terminate at our sep */
            case '=':
                /* Key, key length */
                kpos = lpos;
                klen = p - lpos;

                /* Move forward */
                lpos = p + 1;

                break;
        }

        /* Increment */
        p++;
    }
}