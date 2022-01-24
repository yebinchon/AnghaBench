#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  tls_exit_signal; } ;
struct context {TYPE_1__ c2; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM_ERRORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct context*,int /*<<< orphan*/ ,char*) ; 

void
FUNC2(struct context *c)
{
    FUNC0(D_STREAM_ERRORS, "Fatal TLS error (check_tls_errors_co), restarting");
    FUNC1(c, c->c2.tls_exit_signal, "tls-error"); /* SOFT-SIGUSR1 -- TLS error */
}