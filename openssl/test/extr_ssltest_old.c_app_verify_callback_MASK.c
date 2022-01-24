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
struct app_verify_arg {char* string; scalar_t__ app_verify; } ;
typedef  int /*<<< orphan*/  X509_STORE_CTX ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int FUNC6(X509_STORE_CTX *ctx, void *arg)
{
    int ok = 1;
    struct app_verify_arg *cb_arg = arg;

    if (cb_arg->app_verify) {
        char *s = NULL, buf[256];
        X509 *c = FUNC1(ctx);

        FUNC5("In app_verify_callback, allowing cert. ");
        FUNC5("Arg is: %s\n", cb_arg->string);
        FUNC5("Finished printing do we have a context? 0x%p a cert? 0x%p\n",
                (void *)ctx, (void *)c);
        if (c)
            s = FUNC0(FUNC3(c), buf, 256);
        if (s != NULL) {
            FUNC5("cert depth=%d %s\n",
                    FUNC2(ctx), buf);
        }
        return 1;
    }

    ok = FUNC4(ctx);

    return ok;
}