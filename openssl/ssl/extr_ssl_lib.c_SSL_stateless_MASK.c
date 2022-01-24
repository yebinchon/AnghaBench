#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ cookieok; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {scalar_t__ hello_retry_request; TYPE_2__ ext; TYPE_1__ s3; } ;
typedef  TYPE_3__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ SSL_HRR_PENDING ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  TLS1_FLAGS_STATELESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

int FUNC4(SSL *s)
{
    int ret;

    /* Ensure there is no state left over from a previous invocation */
    if (!FUNC2(s))
        return 0;

    FUNC0();

    s->s3.flags |= TLS1_FLAGS_STATELESS;
    ret = FUNC1(s);
    s->s3.flags &= ~TLS1_FLAGS_STATELESS;

    if (ret > 0 && s->ext.cookieok)
        return 1;

    if (s->hello_retry_request == SSL_HRR_PENDING && !FUNC3(s))
        return 0;

    return -1;
}