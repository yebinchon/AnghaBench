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
struct user_pass {int /*<<< orphan*/  password; int /*<<< orphan*/  username; } ;
struct TYPE_4__ {int /*<<< orphan*/ * pkcs11_cert_private; int /*<<< orphan*/ * pkcs11_private_mode; int /*<<< orphan*/ * pkcs11_protected_authentication; int /*<<< orphan*/ ** pkcs11_providers; int /*<<< orphan*/  pkcs11_pin_cache_period; } ;
struct TYPE_3__ {int /*<<< orphan*/  pid_persist; } ;
struct context {TYPE_2__ options; scalar_t__ first_time; TYPE_1__ c1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct user_pass) ; 
 int GET_USER_PASS_MANAGEMENT ; 
 int GET_USER_PASS_NEED_OK ; 
 int MAX_PARMS ; 
 int /*<<< orphan*/  M_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct context*) ; 
 int /*<<< orphan*/  FUNC2 (struct user_pass*,int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct context*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct context*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

void
FUNC12(struct context *c)
{
    FUNC1(c);

    FUNC6(&c->c1.pid_persist);

    FUNC4(c);

    FUNC9(c);

#if defined(ENABLE_PKCS11)
    if (c->first_time)
    {
        int i;
        pkcs11_initialize(true, c->options.pkcs11_pin_cache_period);
        for (i = 0; i<MAX_PARMS && c->options.pkcs11_providers[i] != NULL; i++)
        {
            pkcs11_addProvider(c->options.pkcs11_providers[i], c->options.pkcs11_protected_authentication[i],
                               c->options.pkcs11_private_mode[i], c->options.pkcs11_cert_private[i]);
        }
    }
#endif

#if 0 /* test get_user_pass with GET_USER_PASS_NEED_OK flag */
    {
        /*
         * In the management interface, you can okay the request by entering "needok token-insertion-request ok"
         */
        struct user_pass up;
        CLEAR(up);
        strcpy(up.username, "Please insert your cryptographic token"); /* put the high-level message in up.username */
        get_user_pass(&up, NULL, "token-insertion-request", GET_USER_PASS_MANAGEMENT|GET_USER_PASS_NEED_OK);
        msg(M_INFO, "RET:%s", up.password); /* will return the third argument to management interface
                                             * 'needok' command, usually 'ok' or 'cancel'. */
    }
#endif

#ifdef ENABLE_SYSTEMD
    /* We can report the PID via getpid() to systemd here as OpenVPN will not
     * do any fork due to daemon() a future call.
     * See possibly_become_daemon() [init.c] for more details.
     */
    sd_notifyf(0, "READY=1\nSTATUS=Pre-connection initialization successful\nMAINPID=%lu",
               (unsigned long) getpid());
#endif

}